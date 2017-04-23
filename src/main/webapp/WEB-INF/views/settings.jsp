<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
	
	<div id="wrapper">
		<div id="header">
			<h2>Settings</h2>
		</div>
	</div>
		
	<div id="container">
		<div id="content">
			<h3>SETTINGS - UNDER CONSTRUCTION</h3> 
			<br>
			<h4>ToDo List:</h4>
			<ul>
				<li>Validation</li>
				<li>Full Javadoc implementation</li>
				<li>Exception managment! Disable DELETE country(city) if FK bound to a city(address).</li>
				<li>User access levels regulation</li>
				<li>Remove CHAD buttons and implement Bootstrap only</li>
				<li> look into PostMapping(/saveContact) method saveContact (@ModelAttribute("contact") - why not addcontact.</li>
			</ul>
			<br><br><br><br>
			<div id="headersmall">
				<h4><label>Change Log:</label></h4>
			</div>
			<br>	

			<label>19.04. - Alpha 0.5</label>
			<ul>
				<li>Removed annotations autogenerated ID from entity SEX but left BIGSERIAL definition in SQL</li>
				<li>CRUD with Contact-Sex relation works 100%. <a href="https://www.javainterviewpoint.com/spring-mvc-radiobutton-radiobuttons-example/">Radiobuttons</a> implementation planned.</li>
				<li>About and Settings pages refreshed.. quite a waste of time.</li>
				<li>Implemented ADDRESS entity. Functional 99% - update address adds new address entry, instead of updating the original one. Try out cascade options.</li>
				<li>Implemented all entities.Listing works, add form only loads, saving not implemented. Updating? Don't even wanna know..
			</ul>
			<label>21.04. - Alpha 0.5</label>
			<ul>
				<li>Implemented sex options dropdown list AND IT WORKS!</li>
				<li>Renamed field and methods SexAll to SexList</li>
			</ul>
			<label>22.04. - Alpha 0.6</label>
			<ul>
				<li>Contact list buttons and general aesthetics</li>
				<li>Fixed Address ID passing onto controller using <i>form:hidden</i>
				<li>Renamed entity ID fields into just <i>id</i></li>
				<li>Implemented getCity, getCountry methods
				<li>Added dropdown list for City options, removed Country field.</li>
			</ul>
			<label>23.04. - Alpha 0.7</label>
			<ul>
				<li>Implemented City service and DAO layers</li>
				<li>Implemented Country service and DAO layers</li>
				<li>Securiy configuration updated for /city and /country</li>
				<li>More timewasting on buttons and aesthetics</li>
				<li>EVERY(basic)THING WORKS!</li>
			</ul>
		</div>
	</div>



<%@ include file="common/footer.jspf"%>