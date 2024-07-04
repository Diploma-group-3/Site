package services;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.QueryDocumentSnapshot;
import com.google.cloud.firestore.SetOptions;

import models.UserRating;
import providers.FirestoreProvider;

public class DocumentService {
	
	//====== Загальні методи =============================================================================
	
	// Повернення усіх документів
	public static <T> List<T> GetAllDocuments(Class<T>  model, String colectionName){
			
		try (Firestore db = FirestoreProvider.Initialize()) {
				
			List<T> models = new ArrayList<>();
			List<QueryDocumentSnapshot> documents = db.collection(colectionName).get().get().getDocuments();
				
			for (QueryDocumentSnapshot document : documents) {
				models.add(document.toObject(model));
			}
			return models;
				
		} catch ( Exception e) {
				 
		     return null;
		}
	}
	
	// Повернення усіх документів за параметром та значенням
	public static <T> List<T> GetAllDocumentsById(Class<T>  model, String colectionName, String fieldName, String value) {
			
		try (Firestore db = FirestoreProvider.Initialize()){
				
			List<T> models= new ArrayList<>();
			List<QueryDocumentSnapshot> documents = db.collection(colectionName).whereEqualTo(fieldName, value).get().get().getDocuments();
					
			for (QueryDocumentSnapshot document : documents) {
				models.add(document.toObject(model));
			}
			return models;
			    
		} catch ( Exception e) {
			return null;
		}
	}
	
	// Повернення документа за ID
	public static <T> T GetDocumentById(Class<T> model, String colectionName, String id) {
			
		try (Firestore db = FirestoreProvider.Initialize()){
			
			T mod = db.collection(colectionName).document(id).get().get().toObject(model);
			return mod;
				
		} catch ( Exception e) {
		    return null;
		}
	}
	
	// Повернення ID  за значенням поля
	public static String GetIdDocument(String colectionName, String fieldName, String value) {
					
		try (Firestore db = FirestoreProvider.Initialize()){
						
			return db.collection(colectionName).whereEqualTo(fieldName, value).get().get().getDocuments().get(0).getId();
							
		} catch (Exception e) {
			return null;
		}
	}	
	
	// Додавання документа
	public static <T> boolean Add(T model, String colectionName) {
		
		try(Firestore db = FirestoreProvider.Initialize()){
				
			db.collection(colectionName).add(model);
			return true;
				
		} catch (Exception e) {
			return false;
		}
	}
				
	// Редагування документа
	public static  <T>  boolean Update(T model, String colectionName, String id) {
			
		try (Firestore db = FirestoreProvider.Initialize()){
				
			DocumentReference companyRE = db.collection(colectionName).document(id);
		    companyRE.set(model, SetOptions.merge());
		    return  true;
		        
		} catch (Exception e) {
			return false;
		}
	}
	
	// Видалення компанії
	public static boolean Delete(String colectionName, String id) {
			
		try (Firestore db = FirestoreProvider.Initialize()){
				
			db.collection(colectionName).document(id).delete();
			return true;
				
		} catch (Exception e) {
			return false;
		}
	}	

	
	//===== Спеціалізовані методи ==================================================================================
	
	// Повернення рейтингу за ID
	public static double GetRetingById(String colectionName, String fieldName, String value) {
			
		try (Firestore db = FirestoreProvider.Initialize()){
				
			double reting = 0;
			List<QueryDocumentSnapshot> documents = db.collection(colectionName).whereEqualTo(fieldName, value).get().get().getDocuments();
			for(QueryDocumentSnapshot document: documents) {
				reting += document.getDouble("rating");
			}
			if(documents.size() < 100) {
				int res = (100 - documents.size()) * 5;
				reting = (reting + res) / 100;
			}	
			return reting;
				
		} catch ( Exception e) {
			return 0;
		}
	}

	// Додавання рейтингу компанії та регулювання кількості оцінок
	public static boolean AddRetingUsers(UserRating reting) {
			
		try(Firestore db = FirestoreProvider.Initialize()){
				
			DocumentSnapshot document = db.collection("User_rating").add(reting).get().get().get();
			List <UserRating> list = GetAllDocumentsById(UserRating.class, "User_rating", "userId", document.getString("userId"));
			SortDocuments.SortAsc(list);
			
			if(list.size() > 100) {
				
				Delete("User_rating", GetIdReting("User_rating","dataTime", list.get(0).getDataTime()));
			}
			return true;
		    
		} catch ( Exception e) {
			return false;
		}
	}
	
	// Повернення ID  рейтингу
	public static String GetIdReting(String colectionName, String fieldName, Instant value) {
				
		try (Firestore db = FirestoreProvider.Initialize()){
					
			return db.collection(colectionName).whereEqualTo(fieldName, value).get().get().getDocuments().get(0).getId();
						
		} catch (Exception e) {
			return null;
		}
	}	
			
	// Повернення списку url фотографій
	public static List<String> GetCompanyPhoto(String companyId) {
			
		// Сюди companyId прийде із сесії String companyId = (String)request.getSession().getAttribute("companyId");
		try (Firestore db = FirestoreProvider.Initialize()) {
				
			@SuppressWarnings("unchecked")
			List<String> photos = (List<String>)db.collection("Company").document(companyId).get().get().get("arrPhoto");
				
			return photos;
				
		} catch ( Exception e) {
					 
			return null;
		}
	}
	
	// Додавання до списку url фотографії компанії
	public static boolean AddCompanyPhoto(String companyId, String urlPhoto) {
				
		try (Firestore db = FirestoreProvider.Initialize()) {
					
			List<String> photos = GetCompanyPhoto(companyId);
			db.collection("Company").document(companyId).update("arrPhoto", photos.add(urlPhoto));
					
			return true;
					
		} catch ( Exception e) {
						 
			return false;
		}
	}
	 
	
	// Додавання url фотографії
	public static boolean AddAdminPhoto(String colectionName, String adminId, String urlPhoto) {
					
		try (Firestore db = FirestoreProvider.Initialize()) {
						
			db.collection(colectionName).document(adminId).update("photo", urlPhoto);
						
			return true;
						
		} catch ( Exception e) {
							 
			return false;
		}
	}
}
