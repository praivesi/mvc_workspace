package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.EmpVO;

public class EmpDAO {
	private SqlSession ss = null;
	
	public EmpDAO() {
		SqlSessionFactory factory = ConnectionManager.getInstance().getFactory();
		ss = factory.openSession(true);
	}
	
	public List<EmpVO> selectAll() {
		return ss.selectList("selectAllEmp");
	}
	
	public EmpVO selectOne(int empno) {
		return ss.selectOne("selectOneEmp", empno);
	}
}
