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
@Table(name="Appointment")
public class Appointment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="APPOINTMENT_ID")
	private int appointment_id;
	
	@Column(name="DATE")
	private Date date=new Date();
	
	@ManyToOne(targetEntity=Doctor.class)
	@JoinColumn(name="DOCTOR_ID")
	private Doctor doctor;
	
	@ManyToOne(targetEntity=Patient.class)
	@JoinColumn(name="PATIENT_ID")
	private Patient patient;
	
	@ManyToOne(targetEntity=Clinic.class)
	@JoinColumn(name="CLINIC_ID")
	private Clinic clinic;
	
	public int getAppointment_id() {
		return appointment_id;
	}
	public void setAppointment_id(int appointment_id) {
		this.appointment_id = appointment_id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
	public Clinic getClinic() {
		return clinic;
	}
	public void setClinic(Clinic clinic) {
		this.clinic = clinic;
	}

}
