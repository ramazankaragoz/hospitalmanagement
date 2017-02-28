package com.ramazan.hospital.entity.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Report")
public class Report {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="REPORT_ID")
	private int report_id;
	
	@Column(name="TREATMENT_STATUS")
	private boolean treatment_status;
	
	@Column(name="COST")
	private boolean cost;
	
	@ManyToOne(targetEntity=Doctor.class)
	@JoinColumn(name="DOCTOR_ID")
	private Doctor doctor;
	
	@ManyToOne(targetEntity=Accountant.class)
	@JoinColumn(name="ACCOUNTANT_ID")
	private Accountant accountant;
	
	//Getter and setter
	public int getReport_id() {
		return report_id;
	}
	public void setReport_id(int report_id) {
		this.report_id = report_id;
	}
	public boolean isTreatment_status() {
		return treatment_status;
	}
	public void setTreatment_status(boolean treatment_status) {
		this.treatment_status = treatment_status;
	}
	public boolean isCost() {
		return cost;
	}
	public void setCost(boolean cost) {
		this.cost = cost;
	}
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public Accountant getAccountant() {
		return accountant;
	}
	public void setAccountant(Accountant accountant) {
		this.accountant = accountant;
	}
	

}
