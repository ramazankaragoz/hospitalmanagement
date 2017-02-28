package com.ramazan.hospital.entity.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Doctor")
public class Doctor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="DOCTOR_ID")
	private int doctor_id;
	
	@ManyToOne(targetEntity=Staff.class)
	@JoinColumn(name="STAFF_ID")
	private Staff staff;
	
	@ManyToMany
	@JoinTable(name="RL_PATIENT_DOCTOR",joinColumns=@JoinColumn(name="DOCTOR_ID"),inverseJoinColumns=@JoinColumn(name="PATIENT_ID"))
	private List<Patient> patients;
	
	@OneToMany(mappedBy="doctor")
	private List<Precription> precriptions;
	
	@OneToMany(mappedBy="doctor")
	private List<Report> reports;
	
	@OneToOne(mappedBy="doctor")
	private Clinic clinic;
	
	@OneToMany(mappedBy="doctor")
	private List<Appointment> appointments;
	
	//Getter and Setter
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public List<Patient> getPatients() {
		return patients;
	}
	public void setPatients(List<Patient> patients) {
		this.patients = patients;
	}
	public List<Precription> getPrecriptions() {
		return precriptions;
	}
	public void setPrecriptions(List<Precription> precriptions) {
		this.precriptions = precriptions;
	}
	public Clinic getClinic() {
		return clinic;
	}
	public void setClinic(Clinic clinic) {
		this.clinic = clinic;
	}
	public List<Report> getReports() {
		return reports;
	}
	public void setReports(List<Report> reports) {
		this.reports = reports;
	}
	public List<Appointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(List<Appointment> appointments) {
		this.appointments = appointments;
	}
	
	
}
