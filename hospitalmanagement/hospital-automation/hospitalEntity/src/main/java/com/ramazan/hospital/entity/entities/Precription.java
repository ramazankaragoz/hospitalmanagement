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
@Table(name="Precription")
public class Precription {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="PRECRIPTION_ID")
	private int precription_id;
	
	@Column(name="DRUG")
	private String drug;
	
	@ManyToOne(targetEntity=Doctor.class)
	@JoinColumn(name="DOCTOR_ID")
	private Doctor doctor;
	
	@ManyToOne(targetEntity=Patient.class)
	@JoinColumn(name="PATIENT_ID")
	private Patient patient;
	
	
	//Getter and setter
	public int getPrecription_id() {
		return precription_id;
	}
	public void setPrecription_id(int precription_id) {
		this.precription_id = precription_id;
	}
	public String getDrug() {
		return drug;
	}
	public void setDrug(String drug) {
		this.drug = drug;
	}
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
	

}
