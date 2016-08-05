package team.hnucs.edu.entity;

// default package

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private String teaNum;
	private String teaName;
	private String teaSex;
	private Short teaAge;
	private Date teaBirth;
	private String teaMinority;
	private String teaDegree;
	private String teaProTitle;
	private String teaContactWay;
	private String teaPassword;
	private Boolean type;
	private Set<CourseSelection> courseSelections = new HashSet<CourseSelection>(0);
	private Set<Course> courses = new HashSet<Course>(0);

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	/** minimal constructor */
	public Teacher(String teaNum, String teaName, String teaSex, Short teaAge,
			Date teaBirth, String teaMinority, String teaDegree,
			String teaProTitle, Boolean type) {
		this.teaNum = teaNum;
		this.teaName = teaName;
		this.teaSex = teaSex;
		this.teaAge = teaAge;
		this.teaBirth = teaBirth;
		this.teaMinority = teaMinority;
		this.teaDegree = teaDegree;
		this.teaProTitle = teaProTitle;
		this.type = type;
	}

	/** full constructor */
	public Teacher(String teaNum, String teaName, String teaSex, Short teaAge,
			Date teaBirth, String teaMinority, String teaDegree,
			String teaProTitle, String teaContactWay, String teaPassword,
			Boolean type, Set<CourseSelection> courseSelections, Set<Course> courses) {
		this.teaNum = teaNum;
		this.teaName = teaName;
		this.teaSex = teaSex;
		this.teaAge = teaAge;
		this.teaBirth = teaBirth;
		this.teaMinority = teaMinority;
		this.teaDegree = teaDegree;
		this.teaProTitle = teaProTitle;
		this.teaContactWay = teaContactWay;
		this.teaPassword = teaPassword;
		this.type = type;
		this.courseSelections = courseSelections;
		this.courses = courses;
	}

	// Property accessors

	public String getTeaNum() {
		return this.teaNum;
	}

	public void setTeaNum(String teaNum) {
		this.teaNum = teaNum;
	}

	public String getTeaName() {
		return this.teaName;
	}

	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}

	public String getTeaSex() {
		return this.teaSex;
	}

	public void setTeaSex(String teaSex) {
		this.teaSex = teaSex;
	}

	public Short getTeaAge() {
		return this.teaAge;
	}

	public void setTeaAge(Short teaAge) {
		this.teaAge = teaAge;
	}

	public Date getTeaBirth() {
		return this.teaBirth;
	}

	public void setTeaBirth(Date teaBirth) {
		this.teaBirth = teaBirth;
	}

	public String getTeaMinority() {
		return this.teaMinority;
	}

	public void setTeaMinority(String teaMinority) {
		this.teaMinority = teaMinority;
	}

	public String getTeaDegree() {
		return this.teaDegree;
	}

	public void setTeaDegree(String teaDegree) {
		this.teaDegree = teaDegree;
	}

	public String getTeaProTitle() {
		return this.teaProTitle;
	}

	public void setTeaProTitle(String teaProTitle) {
		this.teaProTitle = teaProTitle;
	}

	public String getTeaContactWay() {
		return this.teaContactWay;
	}

	public void setTeaContactWay(String teaContactWay) {
		this.teaContactWay = teaContactWay;
	}

	public String getTeaPassword() {
		return this.teaPassword;
	}

	public void setTeaPassword(String teaPassword) {
		this.teaPassword = teaPassword;
	}

	public Boolean getType() {
		return this.type;
	}

	public void setType(Boolean type) {
		this.type = type;
	}

	public Set<CourseSelection> getCourseSelections() {
		return this.courseSelections;
	}

	public void setCourseSelections(Set<CourseSelection> courseSelections) {
		this.courseSelections = courseSelections;
	}

	public Set<Course> getCourses() {
		return this.courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}
	@Override
	public String toString() {
		return "Teacher [teaNum=" + teaNum + ", teaName=" + teaName
				+ ", teaSex=" + teaSex + ", teaAge=" + teaAge + ", teaBirth="
				+ teaBirth + ", teaMinority=" + teaMinority + ", teaDegree="
				+ teaDegree + ", teaProTitle=" + teaProTitle
				+ ", teaContactWay=" + teaContactWay + ", teaPassword="
				+ teaPassword + ", type=" + type + "]";
	}
}