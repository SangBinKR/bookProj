
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class connection {

	public static void main(String[] args) throws Exception {
		
		
		URL ojc = new URL("https://ridibooks.com/category/books/100");
		URLConnection con = ojc.openConnection();
		
		System.out.println(con.getContentType());
		
		// 전체 헤더 정보 읽어오기
		Map<String, List<String>> header = con.getHeaderFields();
		
		System.out.println("---------------------------------------------------");
		
//		
//		for(Entry<String, List<String>> mp : header.entrySet()) {
//			System.out.println(mp.getKey() + " : ");
//			System.out.println(mp.getValue().toString());
//		}
		
		System.out.println();
		System.out.println("-------------------------------------------------------");
		
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputline;
		while((inputline = in.readLine()) != null) 
			System.out.println(inputline);
		in.close();
		
		
		
		
		
	}

}
