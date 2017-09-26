When(/^I start checkout for a car/) do
  step 'User gets car into order'
  step 'User confirms start order'
  step 'User inputs phone number for verification'
  step 'User inputs phone verification code'
  step 'User consents to TCPA'
end

#This is when the user selects Get Car and starts the checkout proccess 
When(/^User gets car into order$/) do
  puts 'User Begins Checkout'     
  @wait.until { @driver.find_element(:accessibility_id, "Get Car").displayed? }
  puts 'Get Car'   
  @driver.find_element(:accessibility_id, "Get Car").click 
end


#This is when the user confirms their order
When(/^User confirms start order$/) do
  puts 'User confirms start order'     
  @wait.until { @driver.find_element(:accessibility_id, "Great Choice!").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Proceed").displayed? }
  @driver.find_element(:accessibility_id, "Proceed").click 
end

#This is the screen when the user needs to input their phone number to receive a verification code
When(/^User inputs phone number for verification$/) do
  puts 'Phone Number'  
  @wait.until { @driver.find_element(:accessibility_id, "Enter Number").displayed? }
  @driver.find_element(:accessibility_id, "Enter Number").click
  number5Button = @driver.find_element(:xpath, '//XCUIElementTypeButton[@name="5"]')
  @wait.until { number5Button.displayed? }
  number5Button.click
  number5Button.click
  number5Button.click
  number5Button.click  
  number5Button.click  
  number5Button.click  
  number5Button.click  
  number5Button.click    
  number5Button.click
  number5Button.click
  @wait.until { @driver.find_element(:accessibility_id, "circle button ok").displayed? }
  @driver.find_element(:accessibility_id, "circle button ok").click  
end

#This is screen when the user receives the verification code and now will enter it
When(/^User inputs phone verification code$/) do
  puts 'Verify Phone'  
  @wait.until { @driver.find_element(:accessibility_id, "Verification Code").displayed? }  
  number0Button = @driver.find_element(:xpath, '//XCUIElementTypeButton[@name="0"]')
  @wait.until { number0Button.displayed? }
  number0Button.click
  number0Button.click
  number0Button.click
  number0Button.click
  @wait.until { @driver.find_element(:accessibility_id, "circle button ok").displayed? }
  @driver.find_element(:accessibility_id, "circle button ok").click
end

#This is the screen when the user is asked for permission to be contacted
When(/^User consents to TCPA$/) do
  puts 'TCPA Consent'  
  @wait.until { @driver.find_element(:accessibility_id, "Can We Text You?").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Yes").displayed? }
  @driver.find_element(:accessibility_id, "Yes").click
end