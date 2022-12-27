package jdbctest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;
import com.wheresming.member.MemberDTO;

public class test1 {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public MemberDTO selectMember(MemberDTO vo) {
			
			System.out.println("도착 확인");
			MemberDTO loginMember = null;
			
			try {
				System.out.println("SQL 트라이");
				loginMember = sqlSession.selectOne("com.wheresming.member.LoginDAO.select",vo);
				// select - commit/rollback 생략
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("SQL 실패");
			}finally {
				sqlSession.close();
				
			}
			
			return loginMember;
		}
	
	public static void main(String[] args) {
		String id = "1234";
		String pw = "12345";
		MemberDTO vo = new MemberDTO();
		
		System.out.println(id);
		
	}
}
