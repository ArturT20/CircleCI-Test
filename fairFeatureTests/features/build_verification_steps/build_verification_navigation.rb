When(/^I can navigate through the menu/) do
  step 'User selects My Account from the hamburger menu'
  step 'User selects My Car from the hamburger menu'
  step 'User selects Documents from the hamburger menu'
  step 'User selects Shop Cars from the hamburger menu'
  step 'User selects Contact Us from the hamburger menu'
end

#User is in the menu section and selects My Account
When(/^User selects My Account from the hamburger menu$/) do
  puts 'My Account selected from menu'   
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "MY ACCOUNT").click
  @wait.until { @driver.find_element(:accessibility_id, "MY ACCOUNT").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Personal Info").displayed? } 
end

#User is in the menu section and selects My Car
When(/^User selects My Car from the hamburger menu$/) do
  puts 'My Car selected from menu'
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "MY CAR").click
  @wait.until { @driver.find_element(:accessibility_id, "MY CAR").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Welcome to My Car").displayed? } 
  @wait.until { @driver.find_element(:accessibility_id, "Find My Car").displayed? }     
  @driver.find_element(:accessibility_id, "Find My Car").click
end

#User is in the menu section and selects Documents
When(/^User selects Documents from the hamburger menu$/) do
  puts 'Documents selected from menu'
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "DOCUMENTS").click
  @wait.until { @driver.find_element(:accessibility_id, "DOCUMENTS").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Insurance Info").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Other Documents").displayed? }      
end

#User is in the menu section and selects Shop Cars
When(/^User selects Shop Cars from the hamburger menu$/) do
  puts 'Shop Cars selected from menu'
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "SHOP CARS").click
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }
end

#User is in the menu section and selects Contact Us
When(/^User selects Contact Us from the hamburger menu$/) do
  puts 'Contact Us selected from menu'
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "CONTACT US").click
  @wait.until { @driver.find_element(:accessibility_id, "Here to Help").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Call Fair").displayed? } 
  @wait.until { @driver.find_element(:accessibility_id, "Email Fair").displayed? }     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click
end