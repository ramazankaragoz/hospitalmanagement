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
@Table(name="Staff")
public class Staff {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="STAFF_ID")
	private int staff_id;
	
	@Column(name="POSITION")
	private String position;
	
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name="USER_ID")
	private User user;
	
	@OneToMany(mappedBy="staff")
	private List<Doctor> doctors;
	
	@OneToMany(mappedBy="staff")
	private List<Accountant> accountants;
	
	
	//Getter and Setter
	public int getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
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
	public List<Accountant> getAccountants() {
		return accountants;
	}
	public void setAccountants(List<Accountant> accountants) {
		this.accountants = accountants;
	}

}
