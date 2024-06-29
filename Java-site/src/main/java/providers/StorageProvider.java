package providers;

import java.io.FileInputStream;
import java.io.IOException;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageOptions;

public class StorageProvider {
	 public static Storage Initialize() {
	     try {
	    	 
	          FileInputStream serviceAccount = new FileInputStream("D:\\Робота\\GitDiploma\\Site\\Java-site\\src\\main\\webapp\\WEB-INF\\resource\\diploma-firebase-adminsdk.json");
	          StorageOptions options = StorageOptions.newBuilder().setCredentials(GoogleCredentials.fromStream(serviceAccount)).build();
	          return options.getService();
	          
	      } catch (IOException e) {
	          return null;
	      }
	}
}
