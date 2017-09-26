When(/^I sign contracts/) do
  step 'User is ready to sign the main contract'
  step 'User signs the main contract'
  step 'User signs all other contracts'
  step 'User selects payment options'
  step 'User reviews contracts and purchases car'
end

#This is when the user begins the contract signing 
When(/^User is ready to sign the main contract$/) do
  puts 'Begin Contract Signing' 
  @wait.until { @driver.find_element(:accessibility_id, "I'm Ready To Sign").displayed? }
  #Scrolls down 8 times to see I'm Ready To Sign 
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  puts 'Ready To Sign'   
  @wait.until { @driver.find_element(:accessibility_id, "I'm Ready To Sign").displayed? }
  @driver.find_element(:accessibility_id, "I'm Ready To Sign").click
  @wait.until { @driver.find_element(:accessibility_id, "Confirm").displayed? }
  @driver.find_element(:accessibility_id, "Confirm").click
  sleep(2)
end

#This is the signiture screen where the user signs and presses submit to continue 
When(/^User signs the main contract$/) do
  puts 'Signature'   
  #Signature
  Appium::TouchAction.new.press({x: 101, y: 175}).move_to({x: 178, y: 2}).release.perform
  #Taps on Submit 
  Appium::TouchAction.new.tap(x: 598, y: 325).release.perform
 end

#This is where the user will sign off on the rest of the contracts
When(/^User signs all other contracts$/) do
  puts 'Sign All Contracts'   
  @wait.until { @driver.find_element(:accessibility_id, "Agree and Sign").displayed? }
  @driver.find_element(:accessibility_id, "Agree and Sign").click
  @wait.until { @driver.find_element(:accessibility_id, "Agree and Sign").displayed? }
  @driver.find_element(:accessibility_id, "Agree and Sign").click
  @wait.until { @driver.find_element(:accessibility_id, "Agree and Sign").displayed? }
  @driver.find_element(:accessibility_id, "Agree and Sign").click
  @wait.until { @driver.find_element(:accessibility_id, "Agree and Sign").displayed? }
  @driver.find_element(:accessibility_id, "Agree and Sign").click
  @wait.until { @driver.find_element(:accessibility_id, "Agree and Sign").displayed? }
  @driver.find_element(:accessibility_id, "Agree and Sign").click
  @wait.until { @driver.find_element(:accessibility_id, "Agree and Sign").displayed? }
  @driver.find_element(:accessibility_id, "Agree and Sign").click  
end

#This is the payments screen where the user will select start payment and recurring payment
When(/^User selects payment options$/) do
  puts 'Select Payments'   
  @wait.until { @driver.find_element(:accessibility_id, "Set Up Payments").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Plaid Saving - 1111").displayed? }
  @driver.find_element(:accessibility_id, "Plaid Saving - 1111").click
  @wait.until { @driver.find_element(:accessibility_id, "Plaid Checking - 0000").displayed? }
  @driver.find_element(:accessibility_id, "Plaid Checking - 0000").click
  #Scroll down to view recurring payment section
  Appium::TouchAction.new.press({x: 145, y: 475}).move_to({x: 15, y: -249}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "Skip for Now").displayed? }
  @driver.find_element(:accessibility_id, "Skip for Now").click
  @driver.find_element(:xpath, "(//XCUIElementTypeStaticText[@name=\"Plaid Checking - 0000\"])[2]").click
  #Scroll down to view ACH 
  Appium::TouchAction.new.press({x: 159, y: 545}).move_to({x: 14, y: -299}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "ACH Authorization").displayed? }  
  @driver.find_element(:accessibility_id, "ACH Authorization").click  
  @wait.until { @driver.find_element(:accessibility_id, "Customer Information").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  #Scroll down to view Set Up Payments 
  Appium::TouchAction.new.press({x: 159, y: 545}).move_to({x: 14, y: -299}).release.perform 
  puts 'Set Up Payments' 
  @driver.find_element(:xpath, "//XCUIElementTypeButton[@name=\"Set Up Payments\"]").click
end

#This is where the user will go through and view each signed document and then submit final order
When(/^User reviews contracts and purchases car$/) do
  puts 'View Signed PDF Docs'   
  @wait.until { @driver.find_element(:accessibility_id, "Review and Confirm Signed Documents").displayed? }  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]").click   
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[3]").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[4]").click      
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[6]").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[7]").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[8]").click  
  @wait.until { @driver.find_element(:accessibility_id, "share sm button").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click 
  puts 'Complete Contracts' 
  @wait.until { @driver.find_element(:accessibility_id, "Submit").displayed? }
  @driver.find_element(:accessibility_id, "Submit").click
end