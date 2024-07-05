package services;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.QueryDocumentSnapshot;

import providers.FirestoreProvider;

public class EmailService {
	
	// Сервіс для відправки повідомлень
	public static void sendEmail(String host, String port, String user, String pass,
			String address, String topic, String content) throws AddressException, MessagingException{
		// 1 
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		
		// 2
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, pass);
			}
		};
		
		// 3
		Session ses = Session.getInstance(props, auth);
		Message mess = new MimeMessage(ses);
		mess.setFrom(new InternetAddress(user));
		InternetAddress[] addresses = {new InternetAddress(address)};
		
		// 4
		mess.setRecipients(Message.RecipientType.TO, addresses);
		mess.setSubject(topic);
		mess.setSentDate(new Date());
		mess.setContent(content, "text/html; charset=utf-8");
		
		// 5
		Transport.send(mess);
	}
	
	// Підтвердження електронної пошти
	public static boolean confirmEmail(String colectionName, String email) {
		try (Firestore db = FirestoreProvider.Initialize()){
			
			String id = db.collection(colectionName).whereEqualTo("email", email).get().get().getDocuments().get(0).getId();
			if(id != null) {
				
				db.collection(colectionName).document(id).update("confirmEmail",  "1");
				return true;
				
			}else {
				
				return false;
			}
		} catch (Exception e) {
			return false;
		} 
	}
	
	// Перевірка підтвердження електронної пошти
	public static boolean checkConfirm(String colectionName, String email) {
		try (Firestore db = FirestoreProvider.Initialize()){
			
			QueryDocumentSnapshot document = db.collection(colectionName).whereEqualTo("email", email).get().get().getDocuments().get(0);
			if(document.getString("confirmEmail").compareTo("0") != 0) {
				
				return true;
			}else {
				
				return false;
			}
		} catch (Exception e) {
			
			return false;
		} 
	}
}
