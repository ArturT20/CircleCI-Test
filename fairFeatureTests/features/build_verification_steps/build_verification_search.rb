When (/^I use the search interface/) do 
  step 'User searches for a car BMW'
  step 'User selects a car from search interface'
end
  
#User is now at the Marketplace and will search for a car using the search interface
When(/^User searches for a car BMW$/) do
  puts 'Search For A Car'
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }
  #Taps on the search input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeTextField").click
  @driver.find_element(:accessibility_id, "b").click
  @driver.find_element(:accessibility_id, "m").click
  @driver.find_element(:accessibility_id, "w").click
end

#This is where a user will select a car from the search list and then go back to marketplace
When(/^User selects a car from search interface$/) do
  puts 'Pick A Car From Search Interface'  
  @wait.until { @driver.find_element(:accessibility_id, "BMW 3 Series").displayed? }
  @driver.find_element(:accessibility_id, "BMW 3 Series").click
  @wait.until { @driver.find_element(:accessibility_id, "3 SERIES").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click 
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }  
end 