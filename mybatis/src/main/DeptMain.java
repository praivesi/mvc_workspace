package main;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.DeptVO;

public class DeptMain {
	public static void main(String[] args) {
		// JDBC 에서 db 연결하려면 connection 객체가 필요
		// mybatis 에서도 connection 객체가 있음 - sqlSession
		
		SqlSession ss = null;
		
		// 1. 설정 파일 읽어오기
		Reader r = null;
		
		try {
			r = Resources.getResourceAsReader("config/Config.xml");
			
			// 2. db 접속
			// connection 에 상응하는 게 SqlSession, but 나머지 작업 없이 바로 완성품이 나온다. ex) 자동차
			// SqlSessionFactory ex) 공장
			// SqlSessionFactoryBuilder ex) 인부
			
			// 인부 객체 생성
			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
			
			// 공장 객체 생성
			SqlSessionFactory factory = ssfb.build(r); // r 안에 있는 config 는 원료
			
			// IO 관련된 클래스는 사용했으면 닫기 (권장사항)
			r.close();
			
			// 완성 객체 생성
			ss = factory.openSession(true);
			
			// db 로부터 데이터를 가져오기 - 전체 데이터 조회
			List<DeptVO> list = ss.selectList("selectAllDept");

			// 데이터를 꺼내서 출력
			/*for(DeptVO vo : list) {
				System.out.println(vo.getDeptno() + "\t" + vo.getDname() + "\t" + vo.getLoc());
			}*/
			
			System.out.println("---------------------------");
			
			// 1건 조회
			/*Object obj = ss.selectOne("selectOneByDeptno", 10);
			DeptVO vo1 = (DeptVO) obj;
			System.out.println(vo1.getDname());*/
			
			System.out.println("----------------------------");
			// 데이터 입력하기
			/*DeptVO vo2 = new DeptVO();
			vo2.setDeptno(50);
			vo2.setDname("itbank");
			vo2.setLoc("jongro3");
			
			ss.insert("insertOneDept", vo2);*/
			
			System.out.println("------------------------------");
			// 데이터 수정하기
			/*DeptVO vo3 = new DeptVO();
			vo3.setDeptno(50);
			vo3.setDname("spring");
			vo3.setLoc("danseong");
			
			ss.update("updateOneDept", vo3);*/
			
			System.out.println("--------------------------");
			// 데이터 삭제하기
			ss.delete("deleteOneDept", 50);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}



















