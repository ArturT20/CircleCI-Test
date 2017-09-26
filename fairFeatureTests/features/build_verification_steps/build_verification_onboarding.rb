When(/^I am qualified through onboarding/) do
  step 'User scans license'
  step 'User verifies personal information'  
  step 'User reports income'
  step 'User completes onboarding'
end

When(/^User scans license$/) do
  #TODO: Figure out how to tackle this for build verification
end

#This is when the user verifies personal information
When(/^User verifies personal information/) do
  puts 'Verify Personal Information'  
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click  
  puts('if statement: ID Verified or ID Failed')
  if @wait.until { @driver.find_element(:accessibility_id, "Confirm or Edit Your Current Address").displayed? }
    puts 'ID Verified'
    @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
    @driver.find_element(:accessibility_id, "Next").click
  else 
    puts 'ID Failed'
    @wait.until { @driver.find_element(:accessibility_id, "Try Again").displayed? }
    @driver.find_element(:accessibility_id, "Try Again").click
    @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
    @driver.find_element(:accessibility_id, "Next").click      
  end   
  @wait.until { @driver.find_element(:accessibility_id, "Is This You?").displayed? }   
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click
end

#This is the screen when the user enters self reported income
When(/^User reports income$/) do
  puts 'Report Income'   
  @wait.until { @driver.find_element(:accessibility_id, "What's Your Income?").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Income Input Field").displayed? }
  @driver.find_element(:accessibility_id, "Income Input Field").click 
  #Inputting income
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"1\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click        
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"circle button ok\"])[2]").click
end

#This is when the user will complete onboarding and go to marketplace
When(/^User completes onboarding$/) do
  puts 'Complete onboarding'
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  #Notification consent screen
  @wait.until { @driver.find_element(:accessibility_id, "Get The Most Up-To-Date Info").displayed? }   
  @wait.until { @driver.find_element(:accessibility_id, "Continue").displayed? }
  @driver.find_element(:accessibility_id, "Continue").click
  #Allow fair app to send notifications 
  @wait.until { @driver.find_element(:accessibility_id, "Allow").displayed? }
  @driver.find_element(:accessibility_id, "Allow").click
  #Go to Marketplace
  @wait.until { @driver.find_element(:accessibility_id, "Find My Ride").displayed? }
  @driver.find_element(:accessibility_id, "Find My Ride").click    
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }
end