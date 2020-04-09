Feature: check returned countries by API

	Background: 
		* url 'https://restcountries.eu/'
		* header Accept = 'application/json'
	Scenario: get list of all countries
		Given path 'rest/v2/alpha/co'
		When method get
		Then status 200
		And def userResponse = response
		Then match userResponse.nativeName contains "Colombia"