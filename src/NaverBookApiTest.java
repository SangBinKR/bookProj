import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;

import vo.Book;

public class NaverBookApiTest {
	
	private String clientID="P3nq6LUKrLz6LOPOVOMf"; //네이버 개발자 센터에서 발급받은 clientID입력
	private String clientSecret = "f_078uxS96";        //네이버 개발자 센터에서 발급받은 clientSecret입력
	public List<Book> searchBookApi(String title) throws IOException{
		 //java코드로 특정 url에 요청보내고 응답받기
        //기본 자바 API를 활용한 방법
        
        String apiURL = "https://openapi.naver.com/v1/search/book.xml?query==" + title; 
        URL url = new URL(apiURL); //API 기본정보의 요청 url을 복사해오고 필수인 query를 적어줍니당! 
        
        URLConnection urlConn=url.openConnection(); //openConnection 해당 요청에 대해서 쓸 수 있는 connection 객체 
        urlConn.setRequestProperty("X-Naver-Client-ID", clientID);
        urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
        //파싱
        List<Book> bookList = null;
        List<Book> list = null; //결과데이터 담을 리스트 
//      System.out.println(data); //응답받은 xml문서 xml문서로부터 내가 원하는 값 탐색하기(xml 파싱)
       XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
       XmlPullParser parser = factory.newPullParser(); //연결하는거 담고 
       parser.setInput(new StringReader(data));
       int eventType= parser.getEventType();
       Book b = null;
       while(eventType != XmlPullParser.END_DOCUMENT){
           switch(eventType){
           case XmlPullParser.END_DOCUMENT://문서의 끝 
               break;
           case XmlPullParser.START_DOCUMENT:
               list = new ArrayList<Book>();
               break;
           case XmlPullParser.START_TAG:{ //무조건 시작하면 만남 
               String tag = parser.getName();
               switch(tag){
               case "items": //items가 열렸다는것은 새로운 책이 나온다는것 
                   b = new Book();
                   break;
               case "title":
                   System.out.println(parser.nextText());
                   break;
               }
               break;
           }
           eventType =parser.next();
  
  
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
