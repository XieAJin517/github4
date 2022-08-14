package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Employee;
import util.ConnOfDatabase;

public class EmployeeDAO {
	private Connection conn;
	public EmployeeDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Employee> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select * from employee";
		ResultSet rs;
		List<Employee> employees=new ArrayList<>();
		Employee employee;

		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				employee=new Employee();
				employee.setEmpID(rs.getInt("empID"));
				employee.setEmpName(rs.getString("empname"));
				employees.add(employee);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return employees;
	}

	public Employee findByempID(int empID) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Employee employee=new Employee();
		try
		{
			queryStr="select empid,empname,pwd from employee where empID="+empID;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	employee.setEmpID(rs.getInt("empID"));
	        	employee.setEmpName(rs.getString("empname"));
	        	employee.setPwd(rs.getString("pwd"));
	        }

		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return employee;
	}
	public  Employee findById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Employee employee=new Employee();
		try
		{
			queryStr="select empID,empname,gender,birthday,empdate,specialty,salary,pwd , education from employee where empID="+id;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	employee.setEmpID(rs.getInt("empID"));
	        	employee.setEmpName(rs.getString("empname"));
	        	employee.setGender(rs.getString("gender"));
	        	employee.setBirthday(rs.getDate("birthday"));
	        	employee.setEmpDate(rs.getDate("empdate"));
	        	employee.setSpecialty(rs.getString("specialty"));
	        	employee.setSalary(rs.getFloat("salary"));
	        	employee.setPwd(rs.getString("pwd"));
	        	employee.setEducation(rs.getString("education"));
		        }

		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return employee;
	}

	public boolean insert(Employee employee) throws Exception
	{
		PreparedStatement stmt;
		int empID=0;
		boolean insFlag=false;
		String insertStr="insert into employee values(?,?,?,?,?,?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(empID) as mempID from employee";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				empID=1+rs.getInt("mempID");
				employee.setEmpID(empID);
			}
			else
				empID=1;
			stmt.setInt(1,employee.getEmpID());
			stmt.setString(2,employee.getEmpName());
			stmt.setString(3, employee.getGender());
			stmt.setDate(4, employee.getBirthday());
			stmt.setDate(5, employee.getEmpDate());
			stmt.setString(6, employee.getSpecialty());
			stmt.setFloat(7, employee.getSalary());
			stmt.setString(8, employee.getPwd());
			stmt.setString(9, employee.getEducation());
			stmt.executeUpdate();
			insFlag=true;
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return insFlag;
	}
	public  boolean update(Employee employee) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update employee set empname=?,gender=?,birthday=?,empdate=?,specialty=?,salary=?,pwd=?,education=? where empID=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{

			stmt.setString(1,employee.getEmpName());
			stmt.setString(2, employee.getGender());
			stmt.setDate(3, employee.getBirthday());
			stmt.setDate(4, employee.getEmpDate());
			stmt.setString(5, employee.getSpecialty());
			stmt.setFloat(6, employee.getSalary());
			stmt.setString(7, employee.getPwd());
			stmt.setString(8, employee.getEducation());
			stmt.setInt(9,employee.getEmpID());

			stmt.executeUpdate();
			updateFlag=true;
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}

		return updateFlag;
	}

	public boolean deleteById(int id) throws Exception
	{
		int empId=id;
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String insertStr="delete from employee where empID=?";
			stmt =conn.prepareStatement(insertStr);
			stmt.setInt(1,empId);
			stmt.executeUpdate();
			deleteFlag=true;
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}

		return deleteFlag;
	}

	public  List<Employee> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Employee> employees= new ArrayList<>();
		Statement stmt;
		ResultSet rs;
		stmt =conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);

		try
		{
		rs=stmt.executeQuery(queryStr);
		if (rs.next())
		{
			rs.beforeFirst();
			if ((currentPage - 1) * pageCount > 0) {
			// 移动结果集数据到当前页
			rs.absolute((currentPage - 1) * pageCount);
			}
			if (currentPage==1)
			{
				rs.beforeFirst();
			}
				int i = 0; // Readed pages
				while (rs.next() && i < pageCount)
				{
				i++;
				Employee employee=new Employee();
				employee.setEmpID(rs.getInt("empID"));
	        	employee.setEmpName(rs.getString("empname"));
	        	employee.setGender(rs.getString("gender"));
	        	employee.setBirthday(rs.getDate("birthday"));
	        	employee.setEmpDate(rs.getDate("empdate"));
	        	employee.setSpecialty(rs.getString("specialty"));
	        	employee.setSalary(rs.getFloat("salary"));
	        	employee.setPwd(rs.getString("pwd"));
	        	employee.setEducation(rs.getString("education"));
				employees.add(employee);
				}
		}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return employees;
	}

}
