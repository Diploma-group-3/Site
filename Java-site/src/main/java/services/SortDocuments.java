package services;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class SortDocuments {
	
	public static <T extends SortDocumentsInterface> void SortAsc(List<T> ratings) {
        Collections.sort(ratings, new Comparator<T>() {
            @Override
            public int compare(T o1, T o2) {
                return o1.getDataTime().compareTo(o2.getDataTime());
            }
        });
    }

	public static <T extends SortDocumentsInterface> void SortDesc(List<T> ratings) {
        Collections.sort(ratings, new Comparator<T>() {
            @Override
            public int compare(T o1, T o2) {
                return o2.getDataTime().compareTo(o1.getDataTime());
            }
        });
    }
}
