package com.wheresming.movieinfo;

import java.io.IOException;
import java.util.Iterator;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class movieInfoReturn {

//		넷플릭스 영화상영시간조회 -------------------------------------------------
	public String movieInfoNft(String code) {
		String url = "https://www.netflix.com/kr/title/" + code;
		System.out.println(url);
		Document doc = null;

		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			System.out.println("영화시간 에러");
			e.printStackTrace();
		}

		Elements element = doc.select("div.title-info");

		Iterator<Element> movietime = element.select("span.duration").iterator();

		String movietimes = movietime.next().text();
		System.out.println(movietimes);
		
		return movietimes;
	}
	
//		넷플릭스 영화 줄거리 조회
	public String movieInfoNfs(String code) {

		String url = "https://www.netflix.com/kr/title/" + code;
		Document doc = null;

		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			System.out.println("영화줄거리 에러");
			e.printStackTrace();
		}

		Elements element = doc.select("div.title-info");

		Iterator<Element> moviestory = element.select("div.title-info-synopsis").iterator();

		String moviestorys = moviestory.next().text();
		System.out.println(moviestorys);
		
		return moviestorys;
	}
	
	
	
//	왓챠 영화상영시간조회 --------------------------------------------------
public String movieInfoWct(String code) {
	String url = "https://watcha.com" + code;
	System.out.println(url);
	Document doc = null;

	try {
		doc = Jsoup.connect(url).get();
	} catch (IOException e) {
		System.out.println("영화시간 에러");
		e.printStackTrace();
	}

	Elements element = doc.select("p.css-1xhht53");

	Iterator<Element> movietime = element.select("p").iterator();

	String movietimes = movietime.next().text();
	System.out.println(movietimes);
	
	return movietimes;
}

//	왓챠 영화 줄거리 조회
public String movieInfoWcs(String code) {

	String url = "https://watcha.com" + code;
	Document doc = null;

	try {
		doc = Jsoup.connect(url).get();
	} catch (IOException e) {
		System.out.println("영화줄거리 에러");
		e.printStackTrace();
	}

	Elements element = doc.select("div.css-kooiip");

	Iterator<Element> moviestory = element.select("p.css-ieefh6").iterator();

	String moviestorys = moviestory.next().text();
	System.out.println(moviestorys);
	
	return moviestorys;
}



//티빙 영화상영시간조회 ------------------------------------------------
public String movieInfoTvt(String code) {
String url = "https://www.tving.com" + code;
System.out.println(url);
Document doc = null;

try {
	doc = Jsoup.connect(url).get();
} catch (IOException e) {
	System.out.println("영화시간 에러");
	e.printStackTrace();
}

Elements element = doc.select("div.css-e339p2.e9icmb810");

Iterator<Element> movietime = element.select("div.tag_wrap.tag_detail").iterator();

String movietimes = movietime.next().text();
System.out.println(movietimes);

return movietimes;
}

//티빙 영화 줄거리 조회
public String movieInfoTvs(String code) {

String url = "https://www.tving.com" + code;
Document doc = null;

try {
	doc = Jsoup.connect(url).get();
} catch (IOException e) {
	System.out.println("영화줄거리 에러");
	e.printStackTrace();
}

Elements element = doc.select("div.css-1cohuf.e9icmb821");

Iterator<Element> moviestory = element.select("p.css-iyldnv.e9icmb82").iterator();

String moviestorys = moviestory.next().text();
System.out.println(moviestorys);

return moviestorys;
}


//영화시간검색 네이버통합 검색 --------------------------------------------------------
public String movieInfoNaver(String title) {
String url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=영화+" + title + " 정보";
System.out.println(url);
Document doc = null;

try {
	doc = Jsoup.connect(url).get();
} catch (IOException e) {
	System.out.println("영화시간 에러");
	e.printStackTrace();
}

Elements element = doc.select("div.info_group:nth-child(5)");

Iterator<Element> movietime = element.select("dd").iterator();

String movietimes = movietime.next().text();
System.out.println(movietimes);

return movietimes;
}

	
}
