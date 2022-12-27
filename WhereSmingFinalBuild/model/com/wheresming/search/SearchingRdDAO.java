package com.wheresming.search;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

import com.wheresming.movie.MovieDTO;

public class SearchingRdDAO {// member 테이블의 리스트 내용 출력하기

	Connection conn; // DB연결을 위한 객체
	PreparedStatement psmt; // SQL문을 실행하는 객체
	ResultSet rs; // Query의 결과값을 받아오는(저장) 객체

	public void select() { // member 테이블의 리스트 내용 출력하기
		// member 테이블의 리스트 내용 출력하기

//		예외처리하는 이유 (try catch문)
//		 - 사용자(개발자)가 발생시킬 수 있는 예외 상황 발생시 그 이외의 코드들을 안전하게 진행
//		 - compile 이후 발생하는 오류의 경우

		// 동적 로딩
		try {
			// Class.forName() 클래스파일 찾기
			// OracleDriver driver = new OracleDriver();
			// 윗줄을 import한뒤 import경로만 복사해서 쓰고 삭제
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 성공"); // 동적로딩 성공여부 체크 > 확인 후 주석처리

			// DB 연결 >> DB의 주소를 알아내서 연결
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe"; // ip주소만 체크 잘하기
			String db_id = "campus_e_0707_4";
			String db_pw = "smhrd4";

			try {
				// 통로열기
				// DB연결(DB가 어디에 있는지)을 위한 객체 (클래스)
				// Connection
				conn = DriverManager.getConnection(url, db_id, db_pw);
				if (conn != null) {
					System.out.println("DB연결성공"); // DB연결 성공여부 체크 > 확인 후 주석처리
				}

			} catch (SQLException e) {
				// e.printStackTrace(); // 에러의 원인을 보여주는 코드
				System.out.println("DB연결 실패"); // 실패시 문구 출력
			}

		} catch (ClassNotFoundException e) {
			// e.printStackTrace(); // 에러의 원인을 보여주는 코드
			System.out.println("드라이버 로딩 실패"); // 실패시 문구 출력
		}

		// SQL문 실행
		String sql = "select mv_image, mv_seq, mv_genre from T_MOVIE where mv_image is not null"; // select 이라서 >>
																									// executeQuery

		try {
			psmt = conn.prepareStatement(sql); // 실행문장 준비단계
			rs = psmt.executeQuery(); // 실행문장 >> Query() : Select문에 사용
			rs.next(); // 한칸내리기

			// column명 추가
			System.out.printf("%8s\t%8s\t%8s%n", "mv_image", "mv_seq", "mv_genre");

			while (rs.next()) {
				// rs.next() = boolean 타입으로 참과 거짓을 받음 >> 값이 있을 때만 결과 가져오기
				String mv_image = rs.getString(1);
				int mv_seq = rs.getInt(2);
				String mv_genre = rs.getString(3);

				// table의 내용 확인 (내용이 있을 때만 확인가능)
				System.out.printf("%8s\t%8s\t%8s%n", mv_image, mv_seq, mv_genre);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 연결종료 >> conn, psmt, rs > 연순서랑 반대로 닫기

			try {
				if (rs != null) { // 열렸을 때 닫기
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		System.out.println("DAO 실행완료");
	}

	public String[] selectGenre(String mv_genre) {
		// 해당하는 장르 찾기
		// 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//System.out.println("드라이버 로딩 성공");
			// 동적로딩 성공여부 체크 > 확인 후 주석처리

			// DB 연결 >> DB의 주소를 알아내서 연결
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe"; // ip주소만 체크 잘하기
			String db_id = "campus_e_0707_4";
			String db_pw = "smhrd4";

			try {
				conn = DriverManager.getConnection(url, db_id, db_pw);

				if (conn != null) {
					//System.out.println("DB 연결 성공");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		// SQL문 실행
		String sql = "select mv_image from t_movie where mv_genre = ? and mv_image is not null";
		//System.out.println("SQL 실행완료");

		ArrayList<String> arrayList = new ArrayList<String>();
		try {
			psmt = conn.prepareStatement(sql); // mv_image의 값을 반환
			// ? 는 반드시 excute전에 설정이 되어 있어야함

			psmt.setString(1, mv_genre); // 1번째 ? 자리에 id를 넣겠다.

			rs = psmt.executeQuery(); // mv_image 컬럼만 들어있는 값
			// rs.next(); // 한칸내리기

			while (rs.next()) {
				// rs.next() = boolean 타입으로 참과 거짓을 받음 >> 값이 있을 때만 결과 가져오기
				String mv_image = rs.getString(1);
				arrayList.add(rs.getString("mv_image"));

				// table의 내용 확인 (내용이 있을 때만 확인가능)
				//System.out.println(mv_image);
			}
			// for(int i = 0; i < arrayList.length; i++)
			// { rs = psmt.executeQuery(); // mv_image
			// if (rs.next()) { // 데이터가 있을 때만 실행 // rs.next > 선택되는 행을 내려가면서 체크 list[i] =
			// rs.getString("mv_image"); // list[i] = rs.getString(1); } }

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 연결 종료
			// 열었던 역순인 > rs, psmt, conn 순으로 닫기
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		//System.out.println(list.size());

		
		String[] list = new String[10];
		Random rd = new Random();
		
		for (int i = 0; i < 10; i++) {
			int num = rd.nextInt(arrayList.size());
			list[i] = arrayList.get(num);
		}
		
			return list;
	}

	public int selectGenreSeq(String mv_image) {
		// 해당하는 시퀀스 찾기
		// 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//System.out.println("드라이버 로딩 성공");
			// 동적로딩 성공여부 체크 > 확인 후 주석처리

			// DB 연결 >> DB의 주소를 알아내서 연결
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe"; // ip주소만 체크 잘하기
			String db_id = "campus_e_0707_4";
			String db_pw = "smhrd4";

			try {
				conn = DriverManager.getConnection(url, db_id, db_pw);

				if (conn != null) {
					//System.out.println("DB 연결 성공");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		// SQL문 실행
		String sql = "select mv_seq from t_movie where mv_image = ?";
		//System.out.println("SQL 실행완료");

		int mv_seq = 0;

		try {
			psmt = conn.prepareStatement(sql); // mv_image의 값을 반환
			// ? 는 반드시 excute전에 설정이 되어 있어야함

			psmt.setString(1, mv_image);
			rs = psmt.executeQuery(); // mv_image 컬럼만 들어있는 값
			// rs.next(); // 한칸내리기
			while (rs.next()) {
				mv_seq = rs.getInt(1);

				// table의 내용 확인 (내용이 있을 때만 확인가능)
				//System.out.println(mv_seq);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 연결 종료
			// 열었던 역순인 > rs, psmt, conn 순으로 닫기
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return mv_seq;
	}

}