package com.ramazan.hospital.entity.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="Clinic")
public class Clinic {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="CLINIC_ID",unique=true,nullable=false)
	private int clinic_id;

	@Column(name="NAME")
	private String name;
	
	@Column(name="NO")
	private int no;
	
	@OneToOne
	@JoinColumn(name="DOCTOR_ID")
	private Doctor doctor;
	
	@OneToMany(mappedBy="clinic")
	private List<Appointment> appointments;
	
	//Getter and setter
	public int getClinic_id() {
		return clinic_id;
	}
	public void setClinic_id(int clinic_id) {
		this.clinic_id = clinic_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public List<Appointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(List<Appointment> appointments) {
		this.appointments = appointments;
	}
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
	
}
