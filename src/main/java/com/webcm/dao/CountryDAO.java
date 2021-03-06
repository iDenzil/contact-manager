package com.webcm.dao;

import java.util.List;

import com.webcm.entity.Country;

/**
 * DAO layer interface for Country entity
 * 
 * Communicates with the database and performs required operations on the database 
 * 
 * @author Ivor �o� - <a href="mailto:ivor.sos@gmail.com">ivor.sos@gmail.com</a>
 * @version 1.0.1, 14.05.2017. 
 *
 */
public interface CountryDAO {

	/**
	 * Retrieves all the Country entries from the database in a List format
	 * 
	 * @return	The List of Country objects.
	 */
	public List<Country> getCountryList();
	
	/**
	 * Retrieves specified Country object from the database
	 * 
	 * @param theId	ID for the required Country
	 * @return		The requested Country object
	 */
	public Country getCountry(long theId);

	/**
	 * Saves the attribute Country into the database
	 * 
	 * @param newCountry	The Country object that needs to be saved
	 */
	public void saveCountry(Country newCountry);

	/**
	 * Removes the specified Country entry from the database
	 * 
	 * @param theId	ID of the Country object to be deleted
	 */
	public void deleteCountry(long theId);

}
