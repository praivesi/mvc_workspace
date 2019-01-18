package vo;

public class EmpVO {
	private int empno;
	private String ename;
	private double sal;
	private int depno;
	
	public EmpVO() {}
	
	public EmpVO(int empno, String ename, double sal, int depno) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.depno = depno;
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
	public int getDepno() {
		return depno;
	}
	public void setDepno(int depno) {
		this.depno = depno;
	}
	
	
}
