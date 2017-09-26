When(/^I submit with low income and bad credit$/) do
  step 'I login with appium'
  step 'User scans license'
  step 'User verifies information with low income and bad credit'
  step 'User reports low income'
end

#This is when the user verifies personal information
When(/^User verifies information with low income and bad credit/) do
  puts 'Verify Personal Information' 
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  #Taps on the zip code input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[6]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "more").click 
  #Zip code entered is for an annual income of 10k and a 600 credit scrore     
  @driver.find_element(:accessibility_id, "0").click     
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "1").click
  @driver.find_element(:accessibility_id, "6").click
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "Done").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click
end

#This is the screen when the user enters self reported income
When(/^User reports low income$/) do
  puts 'Report Income'   
  @wait.until { @driver.find_element(:accessibility_id, "Income Input Field").displayed? }
  @driver.find_element(:accessibility_id, "Income Input Field").click    
  #Inputting income   
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"1\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"0\"])[2]").click         
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"circle button ok\"])[2]").click
end 

Then(/^I should have a low income rejected application$/) do
  step 'User hits noaa after onboarding'
end

#User hits NOAA after onboarding 
Then(/^User hits noaa after onboarding$/) do
  puts 'NOAA screen'  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click   
  @wait.until { @driver.find_element(:accessibility_id, "Continue").displayed? }
  @driver.find_element(:accessibility_id, "Continue").click
  @wait.until { @driver.find_element(:accessibility_id, "Allow").displayed? }
  @driver.find_element(:accessibility_id, "Allow").click
  @wait.until { @driver.find_element(:accessibility_id, "Let's Try Again In 30 Days").displayed? }
  #TODO - Add accessibility id for click here
  #Taps on Click Here 
  Appium::TouchAction.new.tap(x: 232, y: 421).release.perform  
  @wait.until { @driver.find_element(:accessibility_id, "Dear Bruce Wayne,").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @wait.until { @driver.find_element(:accessibility_id, "Continue Browsing").displayed? }
  @driver.find_element(:accessibility_id, "Continue Browsing").click
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }  
end

When(/^I submit with low income and good credit$/) do
  step 'I login with appium'
  step 'User scans license'
  step 'User verifies information with low income and good credit'
  step 'User reports low income'    
end

#This is when the user verifies personal information
When(/^User verifies information with low income and good credit/) do
  puts 'Verify Personal Information' 
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click    
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  #Taps on the zip code input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[6]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "more").click   
  #Zip code entered is for an annual income of 10k and a 700 credit scrore    
  @driver.find_element(:accessibility_id, "0").click     
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "1").click
  @driver.find_element(:accessibility_id, "7").click
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "Done").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click
end

Then(/^I should have a approved application$/) do
  step 'User completes onboarding'
end

When(/^I submit with bad credit$/) do
  step 'I login with appium'
  step 'User scans license'
  step 'User verifies information with bad credit'
  step 'User reports income'  
end

#This is when the user verifies personal information
When(/^User verifies information with bad credit/) do
  puts 'Verify Personal Information' 
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  #Taps on the zip code input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[6]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "more").click   
  #Zip code entered is for an annual income of 60k and a 400 credit scrore    
  @driver.find_element(:accessibility_id, "0").click     
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "6").click
  @driver.find_element(:accessibility_id, "4").click
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "Done").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click  
end

Then(/^I should have a rejected application with bad credit$/) do
  step 'User hits noaa after onboarding'   
end

When(/^I submit with high risk$/) do
  step 'I login with appium'
  step 'User scans license'
  step 'User verifies information with high risk'
  step 'User reports income'  
end

#This is when the user verifies personal information
When(/^User verifies information with high risk/) do
  puts 'Verify Personal Information' 
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click     
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  #Taps on the city input field
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[4]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  #City is changed to New York to trigger the high risk response   
  @driver.find_element(:accessibility_id, "N").click   
  @driver.find_element(:accessibility_id, "e").click     
  @driver.find_element(:accessibility_id, "w").click
  @driver.find_element(:accessibility_id, "space").click
  @driver.find_element(:accessibility_id, "Y").click
  @driver.find_element(:accessibility_id, "o").click
  @driver.find_element(:accessibility_id, "r").click
  @driver.find_element(:accessibility_id, "k").click
  @driver.find_element(:accessibility_id, "Done").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click
end

Then(/^I should have a processing request application$/) do
  step 'User hits processing request'  
end

Then(/^User hits processing request/) do
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Continue").displayed? }
  @driver.find_element(:accessibility_id, "Continue").click
  @wait.until { @driver.find_element(:accessibility_id, "Allow").displayed? }
  @driver.find_element(:accessibility_id, "Allow").click
  @wait.until { @driver.find_element(:accessibility_id, "Processing Request").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Continue Browsing").displayed? }
  @driver.find_element(:accessibility_id, "Continue Browsing").click
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }
end

When(/^I submit with high risk and bad credit$/) do
  step 'I login with appium'
  step 'User scans license'
  step 'User verifies information high risk and bad credit'
  step 'User reports income'  
end

#This is when the user verifies personal information
When(/^User verifies information high risk and bad credit/) do
  puts 'Verify Personal Information' 
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  #Taps on the city input field
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[4]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  #City is changed to New York to trigger the high risk response     
  @driver.find_element(:accessibility_id, "N").click   
  @driver.find_element(:accessibility_id, "e").click     
  @driver.find_element(:accessibility_id, "w").click
  @driver.find_element(:accessibility_id, "space").click
  @driver.find_element(:accessibility_id, "Y").click
  @driver.find_element(:accessibility_id, "o").click
  @driver.find_element(:accessibility_id, "r").click
  @driver.find_element(:accessibility_id, "k").click
  @driver.find_element(:accessibility_id, "Done").click 
  #Taps on the zip code input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[6]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "more").click   
  #Zip code entered is for an annual income of 60k and a 400 credit scrore   
  @driver.find_element(:accessibility_id, "0").click     
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "6").click
  @driver.find_element(:accessibility_id, "4").click
  @driver.find_element(:accessibility_id, "0").click
  @driver.find_element(:accessibility_id, "Done").click     
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click
end

Then(/^I should have a high risk rejected application$/) do
  step 'User hits noaa after onboarding'  
end

When(/^I submit with no credit with a valid ssn$/) do
  step 'I login with appium'
  step 'User scans license'
  step 'User verifies information with no credit with a valid ssn'
  step 'User reports income'  
end

#This is when the user verifies personal information
When(/^User verifies information with no credit with a valid ssn/) do
  puts 'Verify Personal Information' 
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  #Taps on the zip code input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[6]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "more").click   
  #Zip code entered is to trigger a credit no hit with a valid ssn   
  @driver.find_element(:accessibility_id, "9").click     
  @driver.find_element(:accessibility_id, "7").click
  @driver.find_element(:accessibility_id, "7").click
  @driver.find_element(:accessibility_id, "7").click
  @driver.find_element(:accessibility_id, "7").click
  @driver.find_element(:accessibility_id, "Done").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click
end

Then(/^I should have a approved application after entering ssn$/) do
  step 'User inputs a valid ssn'      
end

Then(/^User inputs a valid ssn/) do
  puts 'Input valid ssn'
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  #Notification consent screen
  @wait.until { @driver.find_element(:accessibility_id, "Get The Most Up-To-Date Info").displayed? }   
  @wait.until { @driver.find_element(:accessibility_id, "Continue").displayed? }
  @driver.find_element(:accessibility_id, "Continue").click
  #Allow fair app to send notifications 
  @wait.until { @driver.find_element(:accessibility_id, "Allow").displayed? }
  @driver.find_element(:accessibility_id, "Allow").click  
  @wait.until { @driver.find_element(:accessibility_id, "We Couldn't Verify Your ID").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Enter SSN").displayed? }  
  @driver.find_element(:accessibility_id, "Enter SSN").click
  @wait.until { @driver.find_element(:accessibility_id, "Enter Your Full Social Security Number").displayed? }  
  #SSN is inputed so the user can move forward with the application process 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"1\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"2\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"3\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"4\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"5\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"6\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"7\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"8\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"9\"])[2]").click   
  @driver.find_element(:accessibility_id, "circle button ok").click
  @wait.until { @driver.find_element(:accessibility_id, "Find My Ride").displayed? }
  @driver.find_element(:accessibility_id, "Find My Ride").click   
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }
end

When(/^I submit with no credit with an invalid ssn$/) do
  step 'I login with appium'
  step 'User scans license'
  step 'User verifies information with no credit with a invalid ssn'
  step 'User reports income'  
end

#This is when the user verifies personal information
When(/^User verifies information with no credit with a invalid ssn/) do
  puts 'Verify Personal Information' 
  @wait.until { @driver.find_element(:accessibility_id, "Let's Begin Tailoring Your Experience").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do It").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click     
  @wait.until { @driver.find_element(:accessibility_id, "Got It").displayed? }
  @driver.find_element(:accessibility_id, "Got It").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  #Taps on the zip code input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[6]").click
  @wait.until { @driver.find_element(:accessibility_id, "delete").displayed? }
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "delete").click
  @driver.find_element(:accessibility_id, "more").click   
  #Zip code entered is to trigger a credit no hit with a invalid ssn     
  @driver.find_element(:accessibility_id, "9").click     
  @driver.find_element(:accessibility_id, "4").click
  @driver.find_element(:accessibility_id, "4").click
  @driver.find_element(:accessibility_id, "4").click
  @driver.find_element(:accessibility_id, "4").click
  @driver.find_element(:accessibility_id, "Done").click  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  @wait.until { @driver.find_element(:accessibility_id, "Looks Good").displayed? }
  @driver.find_element(:accessibility_id, "Looks Good").click
end

Then(/^I should have a rejected application after entering ssn$/) do
  step 'User inputs a invalid ssn'  
end

Then(/^User inputs a invalid ssn/) do
  puts 'Input invalid ssn'  
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click  
  #Notification consent screen
  @wait.until { @driver.find_element(:accessibility_id, "Get The Most Up-To-Date Info").displayed? }   
  @wait.until { @driver.find_element(:accessibility_id, "Continue").displayed? }
  @driver.find_element(:accessibility_id, "Continue").click
  #Allow fair app to send notifications 
  @wait.until { @driver.find_element(:accessibility_id, "Allow").displayed? }
  @driver.find_element(:accessibility_id, "Allow").click  
  @wait.until { @driver.find_element(:accessibility_id, "We Couldn't Verify Your ID").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Enter SSN").displayed? }  
  @driver.find_element(:accessibility_id, "Enter SSN").click
  @wait.until { @driver.find_element(:accessibility_id, "Enter Your Full Social Security Number").displayed? }  
  #SSN is inputed so the user can move forward with the application process   
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"1\"])[2]").click  
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"2\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"3\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"4\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"5\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"6\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"7\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"8\"])[2]").click 
  @driver.find_element(:xpath, "(//XCUIElementTypeButton[@name=\"9\"])[2]").click   
  @driver.find_element(:accessibility_id, "circle button ok").click  
  @wait.until { @driver.find_element(:accessibility_id, "Let's Try Again In 30 Days").displayed? }
  #TODO - Add accessibility id for click here
  #Taps on Click Here 
  Appium::TouchAction.new.tap(x: 232, y: 421).release.perform  
  @wait.until { @driver.find_element(:accessibility_id, "Dear Bruce Wayne,").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click   
  @wait.until { @driver.find_element(:accessibility_id, "Continue Browsing").displayed? }
  @driver.find_element(:accessibility_id, "Continue Browsing").click
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }   
end

Given(/^I am a user with a device$/) do
  @driver = Appium::Driver.new(desired_caps())
  @wait = Selenium::WebDriver::Wait.new(:timeout => 60)
end