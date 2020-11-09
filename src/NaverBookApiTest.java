import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.tomcat.jni.File;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import vo.Book;

public class NaverBookApiTest {
	
	public static StringBuilder sb;
	private String clientID="P3nq6LUKrLz6LOPOVOMf"; //네이버 개발자 센터에서 발급받은 clientID입력
	private String clientSecret = "f_078uxS96";        //네이버 개발자 센터에서 발급받은 clientSecret입력
	public List<Book> searchBookApi(String title) throws IOException, ParserConfigurationException, SAXException{
		 //java코드로 특정 url에 요청보내고 응답받기
        //기본 자바 API를 활용한 방법
        
        String apiURL = "https://openapi.naver.com/v1/search/book.xml?query==" + title; 
        URL url = new URL(apiURL); //API 기본정보의 요청 url을 복사해오고 필수인 query를 적어줍니당! 
        
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        con.setRequestProperty("X-Naver-Client-ID", clientID);
        con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
        int responseCode = con.getResponseCode();
        BufferedReader br;
        if (responseCode == 200) { 
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
        } else { 
            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
        }
        sb = new StringBuilder();
        String line;

        while ((line = br.readLine()) != null) {
            sb.append(line + "\n");
        }
        
        br.close();
        con.disconnect();
        // XML 문서 파싱
 		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
 		DocumentBuilder documentBuilder = factory.newDocumentBuilder();
 		Document document = documentBuilder.parse(sb.toString());
 		
        		
		return null;

	}
	public static void main(String[] args) {
		String title = null;
		try {
			title = URLEncoder.encode("보건교사 안은영", "UTF-8");
			NaverBookApiTest nb = new NaverBookApiTest();
			nb.searchBookApi(title);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	  
	}
}
