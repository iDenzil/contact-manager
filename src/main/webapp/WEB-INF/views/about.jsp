<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

	<div id="wrapper">
		<div id="header">
			<h2>About Contact Manager</h2>
		</div>
	</div>
			
	<div id="container">
		<div id="content">
			<h3>About to be an about page.</h3>

			<br>
			<div id="headerdbl">
				<h2><label>Implemented DB layout</label></h2>
			
			<img src="/resources/images/dblayout.jpg">
			</div>
		</div>
	</div>

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
				<li>Implemented ADDRESS entity. Functional 99% - update address adds new address entry, instead of updating the original one. Test out cascade options.</li>
				<li>Implemented all entities.Listing works, add form only loads, saving not implemented. Updating? Don't even wanna know..
			</ul>
			<label>21.04. - Alpha 0.5</label>
			<ul>
				<li>Implemented sex options dropdown list</li>
				<li>Renamed sexlist field and methods</li>
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
				<li>Basic app functionality 100% implemented!</li>
				<li>Implemented Validation. Everything except address fields works</li>
			</ul>
			<label>24.04. - Alpha 0.7</label>
			<ul>
				<li>Fixed pattern vaildator for names</li>
				<li>Implemented Javadoc comments</li>
				<li>Removed the unneccesary Model parameter from the Delete controller methods</li>
			</ul>
			<label>24.04. - Beta 0.9</label>
			<ul>
				<li>Implemented delete used City/Country object exception handling in City/Country controllers</li>
				<li>Created basic error view</li>
				<li>Full Javadoc implementation finished</li>
				<li>Implemented address validation</li>
			</ul>
			<label>25.-26.04. - v1.0</label>
			<ul>
				<li>Presentation layer validation againt DB references for Delete and Save</li>
				<li>Javadoc updates</li>
			</ul>
			<label>14.05. - v1.0.1</label>
			<ul>
				<li>Fixed City/Country validation when UPDATE called. Disabled database check on equal ID. Required currentSession.clear() before calling save method.</li>
				<li>Declared Sex entity as <a href="https://docs.jboss.org/hibernate/orm/5.2/javadocs/org/hibernate/annotations/Immutable.html">@Immutable</a></li>
				<li>Fixed Back button CSS on Add City form page</li>
				<li>Added C3P0 configuration comments in dispatcher-servlet.xml</li>
			</ul>
			
	<br><br>
	<input class="btn-sm" type="Submit" value="Home"
		onclick="window.location.href='/welcome';return false;"/>
	<br><br>
		
<%@ include file="common/footer.jspf"%>