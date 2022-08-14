package bean;

public class Employee {
private int empID;
private String empName;
private String gender;
private java.sql.Date birthday;
private java.sql.Date empDate;
private String specialty;
private float salary;
private String pwd;
private String education;

public int getEmpID() {
	return empID;
}
public void setEmpID(int empID) {
	this.empID = empID;
}
public String getEmpName() {
	return empName;
}
public void setEmpName(String empName) {
	this.empName = empName;
}
public java.sql.Date getBirthday() {
	return birthday;
}
public void setBirthday(java.sql.Date birthday) {
	this.birthday = birthday;
}
public java.sql.Date getEmpDate() {
	return empDate;
}
public void setEmpDate(java.sql.Date empDate) {
	this.empDate = empDate;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}


public String getSpecialty() {
	return specialty;
}
public void setSpecialty(String specialty) {
	this.specialty = specialty;
}
public float getSalary() {
	return salary;
}
public void setSalary(float salary) {
	this.salary = salary;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getEducation() {
	return education;
}
public void setEducation(String education) {
	this.education = education;
}
}
