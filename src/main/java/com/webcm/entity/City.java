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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="city")
public class City {
	

	@Id
	@SequenceGenerator(name="pk_sequence",sequenceName="city_id_seq", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="pk_sequence")
	@Column(name="id", unique=true, nullable=false)
	private long id;

	@NotNull(message="Required input")
	//@Pattern(regexp="[a-zA-Z]+", message="Requiers A-Z only")			//gave up on @Pattern on account of special characters
	@Size(min=2, max=50, message="Required input (2-50 characters)")
	@Column(name="name")
	private String name;

	@NotNull(message="Required input")
	@Size(min=2, max=10, message="Required input (2-10 characters)")
	@Pattern(regexp="[a-zA-Z0-9]+", message="Symbols not allowed")
	@Column(name="zip_code")
	private String zipCode;
	
	@ManyToOne(cascade = {CascadeType.REFRESH, CascadeType.MERGE})
	private Country country;

	public City() {
	}

	public City(String name, String zipCode, Country country) {
		this.name = name;
		this.zipCode = zipCode;
		this.country = country;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return name + ", " + zipCode + ", " +country;
	}

	@Override
	public boolean equals(Object obj) {

			if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		City other = (City) obj;

		if (id==other.id) return false;					// skip the compare if IDs are equal

		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equalsIgnoreCase(other.name))
			return false;
		
		return true;
	}
	
}
