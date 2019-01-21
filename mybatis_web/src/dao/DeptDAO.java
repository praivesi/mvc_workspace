package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.DeptVO;

public class DeptDAO {
	private SqlSession ss = null;
	
	public DeptDAO() {
		SqlSessionFactory factory = ConnectionManager.getInstance().getFactory();
		ss = factory.openSession(true);
	}
	
	// 전체 조회
	public List<DeptVO> selectAll(){
		return ss.selectList("selectAllDept");
	}
	
	// 1건 조회
	public DeptVO selectOne(int no) {
		return ss.selectOne("selectOneDept", no);
	}
}
