package com.webcm.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="address")
public class Address {

	@Id
	@SequenceGenerator(name="pk_sequence",sequenceName="address_id_seq", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="pk_sequence")
	@Column(name="id", unique=true, nullable=false)
	private long id;
	
	//@Pattern(regexp="\\w+,", message="Letters A-Z only")				//gave up on @Pattern on account of special characters
	@Size(min=2, max=20, message="Required input (2-20 characters)")
	@Column(name="street")
	private String street;
	
	@Pattern(regexp="[a-zA-Z0-9]+{1,}", message="Letters and digity only")
	@Size(min=1, max=5, message="Required input (1-5 characters)")
	@Column(name="street_no")
	private String streetNo;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	private City city;

	public Address() {
	}

	public Address(String street, String streetNo, City city) {
		this.street = street;
		this.streetNo = streetNo;
		this.city = city;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getStreetNo() {
		return streetNo;
	}

	public void setStreetNo(String streetNo) {
		this.streetNo = streetNo;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return street + " " + streetNo + ", " + city;
	}

}
