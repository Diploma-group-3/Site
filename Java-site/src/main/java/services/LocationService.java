package services;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONArray;
import org.json.JSONObject;

public class LocationService {

	// Повернення координат ширини та висоти за адресою
	public static String GetLocationAddress(String street_hous, String city) {
		String location = null;
			
		try {
				
			String url = "https://nominatim.openstreetmap.org/search?q=" + URLEncoder.encode(street_hous + "," + city, "UTF-8")  + "&format=json";
				
	        // 1. Зтягнули дані з web-сервера
	        HttpURLConnection con = (HttpURLConnection) new URL(url).openConnection();
	        con.setRequestMethod("GET");
	            
	           
	        BufferedReader readLocation = new BufferedReader(new InputStreamReader(con.getInputStream()));
	        StringBuilder response = new StringBuilder();
	        String line;
	        while ((line = readLocation .readLine()) != null) {
	            response.append(line);
	        }
	        readLocation.close();
	        con.disconnect();
	            
	        // 2. Попарсили, дістали локацію
	        String jsonStr = response.toString();
	        JSONArray jsonArray = new JSONArray(jsonStr);
	            
	        if (jsonArray.length() > 0) {
	            JSONObject firstObject = jsonArray.getJSONObject(0);
	            location = firstObject.getString("lat") + "," + firstObject.getString("lon");
	                
	        } else {
	            return null;
	        }
	            
	    } catch (Exception e) {
	        return null;
	    }
		return location;
	}
}
