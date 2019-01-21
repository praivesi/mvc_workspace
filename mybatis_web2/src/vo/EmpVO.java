package vo;

public class EmpVO {
	private int empno;
	private String ename;
	private double sal;
	private int deptno;
	
	public EmpVO() {};
	
	public EmpVO(int empno, String ename, double sal, int deptno) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.deptno = deptno;
	}
	
	public int getEmpno() {
		return empno;
	}
	
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
	public String getEname() {
		return ename;
	}
	
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	public double getSal() {
		return sal;
	}
	
	public void setSal(double sal) {
		this.sal = sal;
	}
	
	public int getDeptno() {
		return deptno;
	}
	
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
}
