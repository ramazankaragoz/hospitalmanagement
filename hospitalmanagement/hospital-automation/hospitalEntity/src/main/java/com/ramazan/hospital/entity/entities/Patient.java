package com.ramazan.hospital.entity.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Patient")
public class Patient {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="PATIENT_ID")
	private int patient_id;
	
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name="USER_ID")
	private User user;
	
	@ManyToMany(mappedBy="patients")
	private List<Doctor> doctors;
	
	@OneToMany(mappedBy="patient")
	private List<Bill> bills;
	
	@OneToMany(mappedBy="patient")
	private List<Precription> precriptions;
	
	@OneToMany(mappedBy="patient")
	private List<Appointment> appointments;
	
	
	//Getter and setter
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Doctor> getDoctors() {
		return doctors;
	}
	public void setDoctors(List<Doctor> doctors) {
		this.doctors = doctors;
	}
	public List<Bill> getBills() {
		return bills;
	}
	public void setBills(List<Bill> bills) {
		this.bills = bills;
	}
	public List<Precription> getPrecriptions() {
		return precriptions;
	}
	public void setPrecriptions(List<Precription> precriptions) {
		this.precriptions = precriptions;
	}
	public List<Appointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(List<Appointment> appointments) {
		this.appointments = appointments;
	}
	

}
