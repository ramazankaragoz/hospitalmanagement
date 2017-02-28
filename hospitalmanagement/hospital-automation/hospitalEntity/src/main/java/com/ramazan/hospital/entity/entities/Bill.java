package com.ramazan.hospital.entity.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="BILL")
public class Bill {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="BILL_ID")
	private int bill_id;
	
	@Column(name="COST")
	private double cost;
	
	@Column(name="DESCRIPTION")
	private String description;
	
	@Column(name="DATE")
	private Date date;
	
	@ManyToOne(targetEntity=Patient.class)
	@JoinColumn(name="PATIENT_ID")
	private Patient patient;
	
	
	//Getter and setter
	public int getBill_id() {
		return bill_id;
	}
	public void setBill_id(int bill_id) {
		this.bill_id = bill_id;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
	

}
