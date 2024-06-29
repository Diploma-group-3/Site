package services;

import com.google.cloud.storage.Acl;
import com.google.cloud.storage.Blob;
import com.google.cloud.storage.BlobId;
import com.google.cloud.storage.BlobInfo;
import com.google.cloud.storage.Storage;

import jakarta.servlet.http.Part;
import providers.StorageProvider;

public class StorageService {

	// Додавання файлу в Storage
	public static Blob Add(Part part, String directory) {
		
		try(Storage db = StorageProvider.Initialize()){
			
		    String folderPath = "diploma-db-2538b.appspot.com";
		    String filePath = directory +  part.getSubmittedFileName();

		    BlobId blobId = BlobId.of(folderPath, filePath);
		    BlobInfo blobInfo = BlobInfo.newBuilder(blobId).setContentType( part.getContentType()).build();
		    Blob blob = db.createFrom(blobInfo, part.getInputStream());
		    
		    db.createAcl(blobId, Acl.of(Acl.User.ofAllUsers(), Acl.Role.READER));
		    
			return blob;
		} catch (Exception e) {
			
	        return null;
	    }
	}
}
