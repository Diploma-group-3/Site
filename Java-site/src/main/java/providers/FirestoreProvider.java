package providers;

import java.io.FileInputStream;
import java.io.IOException;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.FirestoreOptions;

public class FirestoreProvider {
	
	public static Firestore Initialize() {
		 try {
			 
			 	//FirestoreOptions firestoreOptions = FirestoreOptions.getDefaultInstance().toBuilder().setProjectId("YOUR_PROJECT_ID").build();
			 	FileInputStream serviceAccount = new FileInputStream("D:\\Робота\\GitDiploma\\Site\\Java-site\\src\\main\\webapp\\WEB-INF\\resource\\diploma-firebase-adminsdk.json");
	            FirestoreOptions options = FirestoreOptions.newBuilder().setCredentials(GoogleCredentials.fromStream(serviceAccount)).build();
	            return options.getService();
	            
	        } catch (IOException e) {
	        	return null;
	        }
	}
}
