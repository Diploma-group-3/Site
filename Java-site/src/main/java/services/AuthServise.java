package services;

import org.mindrot.jbcrypt.BCrypt;

import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;

import models.Company;
import providers.FirestoreProvider;

public class AuthServise {

	//====== Загальні методи ===========================================================================================
	
	// Авторизація адміністратора
		public static <T> T Authorization(String colectionName, String email, String passw, Class<T> backObj) {
				
			try (Firestore db = FirestoreProvider.Initialize()){
					
				DocumentSnapshot document = db.collection(colectionName).whereEqualTo("email", email).get().get().getDocuments().get(0);
				T adminObj = null;
				if(document.getString("email").compareTo(email) == 0 && BCrypt.checkpw(passw, document.getString("password"))) {
					adminObj = document.toObject(backObj);
				}
				return adminObj;
					
			} catch (Exception e) {
				return null;
			}
		}
		
	//====== Спеціальні методи =======================================================================================================
		
	// Додавання (реєстрація)
	public static String RegistrationCompany(Company company) {
		
		try (Firestore db = FirestoreProvider.Initialize()){
				
			String companyId = db.collection("Companies").add(company).get().getId();
			return companyId;
				
		} catch (Exception e) {
			return null;
		}
	}
}
