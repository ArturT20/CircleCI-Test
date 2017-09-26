When(/^I log out and log back in/) do
  step 'Post purchase user logs out'
  step 'Post purchase user logs in'
  step 'Post purchase user verifies email code'
end

Then(/^I ensure I have a car in my cars page/) do
  step 'User is taken to My Car'
  step 'User views fair insurance card'
  step 'User views each pdf document'  
end

#This is when the user logs out 
When(/^Post purchase user logs out$/) do
  puts 'Log Out'  
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "SIGN OUT").click
end

#This is when the user logs back into account 
When(/^Post purchase user logs in$/) do
  puts 'Log In' 
  #Sleep is used to allow the opening video to start before tapping to skip 
  sleep(2)
  #Taps on the opening video to skip it
  el1 = @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther")
  el1.click
  @wait.until { @driver.find_element(:accessibility_id, "Log In").displayed? }
  @driver.find_element(:accessibility_id, "Log In").click
  @wait.until { @driver.find_element(:accessibility_id, "Let's Do This").displayed? }
  @driver.find_element(:accessibility_id, "Let's Do This").click
  @wait.until { @driver.find_element(:accessibility_id, "Link Not Working?").displayed? }
  @driver.find_element(:accessibility_id, "Link Not Working?").click
end

#This is the screen when the user enters email verification code
When(/^Post purchase user verifies email code$/) do
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

#This is to verify once the user logs back into account with a car purchased, they are transitioned to My Car section
Then(/^User is taken to My Car$/) do
  puts 'My Car Is Shown'  
  @wait.until { @driver.find_element(:accessibility_id, "MY CAR").displayed? }
end

#This is to verify fair insurance card is shown when viewing My Documents section
Then(/^User views fair insurance card$/) do
  puts 'My insurance card is shown'  
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "DOCUMENTS").click
  @wait.until { @driver.find_element(:accessibility_id, "Fair Insurance Info").displayed? }
  Appium::TouchAction.new.press({x: 261, y: 163}).move_to({x: -196, y: -2}).release.perform 
  puts 'Email Auto ID Card'
  @wait.until { @driver.find_element(:accessibility_id, "Email Auto ID Card").displayed? }
  @driver.find_element(:accessibility_id, "Email Auto ID Card").click
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click
  puts 'Use Another Insurance Provider'
  @wait.until { @driver.find_element(:accessibility_id, "Use Another Insurance Provider").displayed? }
  @driver.find_element(:accessibility_id, "Use Another Insurance Provider").click
  @wait.until { @driver.find_element(:accessibility_id, "Keep Insurance").displayed? }
  @driver.find_element(:accessibility_id, "Keep Insurance").click      
end

#This is to verify after a user purchases a car, they can view and share each pdf document from the Documents section
Then(/^User views each pdf document$/) do
  puts 'Each PDF document can be viewed and shared'  
  @wait.until { @driver.find_element(:accessibility_id, "DOCUMENTS").displayed? }
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "Due Bill").displayed? }
  @driver.find_element(:accessibility_id, "Due Bill").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click    
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click
  #Next document 
  @wait.until { @driver.find_element(:accessibility_id, "Used Vehicle Disclosure").displayed? }
  @driver.find_element(:accessibility_id, "Used Vehicle Disclosure").click
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click       
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "Fair Agreement").displayed? }
  @driver.find_element(:accessibility_id, "Fair Agreement").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "Customer Acknowledgement Form").displayed? }
  @driver.find_element(:accessibility_id, "Customer Acknowledgement Form").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "Vehicle Maintenance Plan").displayed? }
  @driver.find_element(:accessibility_id, "Vehicle Maintenance Plan").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "Fair Excess Wear Protection Waiver").displayed? }
  @driver.find_element(:accessibility_id, "Fair Excess Wear Protection Waiver").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "Roadside Assistance Terms And Conditions").displayed? }
  @driver.find_element(:accessibility_id, "Roadside Assistance Terms And Conditions").click 
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click      
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "Buyer's Guide").displayed? }
  @driver.find_element(:accessibility_id, "Buyer's Guide").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "ACH Authorization").displayed? }
  @driver.find_element(:accessibility_id, "ACH Authorization").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  #Next document
  @wait.until { @driver.find_element(:accessibility_id, "Fair Insurance").displayed? }
  @driver.find_element(:accessibility_id, "Fair Insurance").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @driver.find_element(:accessibility_id, "share sm button").click 
  @wait.until { @driver.find_element(:accessibility_id, "Cancel").displayed? }
  @driver.find_element(:accessibility_id, "Cancel").click     
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click             
end