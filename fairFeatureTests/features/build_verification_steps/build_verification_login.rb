When(/^I login with appium/) do
  step 'Fair app is launched'
  step 'User logs in'
  step 'User verifies email code'
end


Then(/^I login with appium post checkout/) do
  step 'Post purchase user logs out'
  step 'Post purchase user logs in'
  step 'Post purchase user verifies email code'
  step 'User is taken to My Car'
end

#This is when the Fair app is being launched
When(/^Fair app is launched$/) do
  puts 'Launch The App'
  @driver.start_driver
  #Taps on the opening video to skip it
  el1 = @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther")
  el1.click
  @wait.until { @driver.find_element(:accessibility_id, "Take A Spin").displayed? }
  @driver.find_element(:accessibility_id, "Take A Spin").click
  @wait.until { @driver.find_element(:accessibility_id, "In-App Everything").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click
end

#This is when the user logs in for the first time with an email account, this is the screen where you put the email
When(/^User logs in/) do
  puts 'Log-In'
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }      
  @wait.until { @driver.find_element(:accessibility_id, "Get Started").displayed? }
  @driver.find_element(:accessibility_id, "Get Started").click
  @wait.until { @driver.find_element(:accessibility_id, "Welcome To Fair. Let’s Get Started.").displayed? } 
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click
  @wait.until { @driver.find_element(:accessibility_id, "Sign Up / Log In").displayed? }  
  #Taps log-in email input field 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]").click
  # #Enter email address
  # @wait.until { @driver.find_element(:accessibility_id, "f").displayed? }
  # @driver.find_element(:accessibility_id, "f").click
  # @driver.find_element(:accessibility_id, "a").click   
  # @driver.find_element(:accessibility_id, "i").click
  # @driver.find_element(:accessibility_id, "r").click 
  # @driver.find_element(:accessibility_id, "@").click
  # @driver.find_element(:accessibility_id, "g").click
  # @driver.find_element(:accessibility_id, "m").click   
  # @driver.find_element(:accessibility_id, "a").click
  # @driver.find_element(:accessibility_id, "i").click 
  # @driver.find_element(:accessibility_id, "l").click    
  # @driver.find_element(:accessibility_id, ".").click 
  # @driver.find_element(:accessibility_id, "c").click
  # @driver.find_element(:accessibility_id, "o").click 
  # @driver.find_element(:accessibility_id, "m").click   
  @driver.find_element(:accessibility_id, "Sign Up / Log In").click     
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do This").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do This").click
  @wait.until { @driver.find_element(:accessibility_id, "Check Your Inbox").displayed? }     
  @wait.until { @driver.find_element(:accessibility_id, "Link Not Working?").displayed? }
  @driver.find_element(:accessibility_id, "Link Not Working?").click
end

#This is the screen when the user enters email verification code
When(/^User verifies email code/) do
  puts 'Email Verification' 
  @wait.until { @driver.find_element(:accessibility_id, "Enter Verification Code").displayed? }   
  number2Button = @driver.find_element(:accessibility_id, "2")
  @wait.until { number2Button.displayed? }
  number2Button.click
  number2Button.click
  number2Button.click
  number2Button.click
  number2Button.click
  number2Button.click
  @driver.find_element(:accessibility_id, "number submit enabled").click
end