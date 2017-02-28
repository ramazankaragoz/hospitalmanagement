package com.ramazan.hospital.entity.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Accountant")
public class Accountant {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ACCOUNTANT_ID")
	private int accountant_id;
	
	@Column(name="DATE")
	private Date date=new Date();
	
	@ManyToOne(targetEntity=Staff.class)
	@JoinColumn(name="STAFF_ID")
	private Staff staff;
	
	@OneToMany(mappedBy="accountant")
	private List<Report> reports;
	
	//Getter and Setter
	public int getAccountant_id() {
		return accountant_id;
	}
	public void setAccountant_id(int accountant_id) {
		this.accountant_id = accountant_id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public List<Report> getReports() {
		return reports;
	}
	public void setReports(List<Report> reports) {
		this.reports = reports;
	}
	

}
