package main;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.EmpVO;

public class EmpMain {
	public static void main(String[] args) {
		SqlSession ss = null;
		Reader r = null;
		
		try {
			// 1. Read configurations
			r = Resources.getResourceAsReader("config/EmpConfig.xml");
			
			// 2. Connect DB
			SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
			SqlSessionFactory factory = ssfb.build(r);
			
			r.close();
			
			ss = factory.openSession(true);
			
			List<EmpVO> empList = ss.selectList("selectAllEmp");
			
			for(EmpVO vo : empList) {
				System.out.println(vo.getEmpno() + "\t" + vo.getEname() + "\t" + vo.getSal() + "\t" + vo.getDepno());
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
