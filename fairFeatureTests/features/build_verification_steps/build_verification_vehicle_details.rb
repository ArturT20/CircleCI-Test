When(/^I navigate through vehicle detail screen/) do
  step 'User views images of car'
  step 'User selects to view image in full screen'
  step 'User views images of car in full screen'
  step 'User toggles With or Without Tax'
  step 'User views Fairprice guarantee'
  step 'User views Fair all in one'
  step 'User views fair insurance plan'
  step 'User views sample contract'
  step 'User views 3 day return policy'
end

#User is at the vehicle details screen and will swipe to view images of car, if any
When(/^User views images of car$/) do
  puts 'View Images'   
  @wait.until { @driver.find_element(:accessibility_id, "Favorite Button").displayed? }
  #Swipe twice to view two images
  Appium::TouchAction.new.press({x: 261, y: 163}).move_to({x: -196, y: -2}).release.perform 
  Appium::TouchAction.new.press({x: 261, y: 163}).move_to({x: -196, y: -2}).release.perform 
end

#User is at the vehicle details screen and selects to view image in full screen
When(/^User selects to view image in full screen$/) do
  # # TODO - When selecting the accessibility_id added to view in full screen, it crashes the app.
  # puts 'Full Screen'   
  # @wait.until { @driver.find_element(:accessibility_id, "Gallery Full Screen").displayed? }
  # @driver.find_element(:accessibility_id, "Gallery Full Screen").click
end

#User is at full screen gallery view and will swipe to view images of car, if any
When(/^User views images of car in full screen$/) do
  # TODO - Once the full screen accessibility_id is working this will be ready to go
  # puts 'View Images'   
  # Appium::TouchAction.new.press({x: 261, y: 163}).move_to({x: -196, y: -2}).release.perform 
  # Appium::TouchAction.new.press({x: 261, y: 163}).move_to({x: -196, y: -2}).release.perform
  # @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  # @driver.find_element(:accessibility_id, "Back").click 
end

#User is at the vehicle details screen and will toggle the tax icon 
When(/^User toggles With or Without Tax$/) do
  puts 'Toggle Tax'   
  #Scrolls down to view tax toggle icon
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  #Taps tax toggle icon
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeSwitch").click
end

#User is at the vehicle details screen and will view Fair Price Guarantee
When(/^User views Fairprice guarantee$/) do
  puts 'View Fairprice Guarantee'  
  @driver.find_element(:accessibility_id, "Fair | Price Guarantee").click
  @wait.until { @driver.find_element(:accessibility_id, "Fair Price Guarantee!").displayed? }
  #Scrolls down twice
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform    
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click
end

#User is at the vehicle details screen and will view Fair All In One
When(/^User views Fair all in one$/) do
  puts 'View Fair All In One' 
  #Scrolls down to view Fair All In One   
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform 
  @wait.until { @driver.find_element(:accessibility_id, "Learn More").displayed? }    
  @driver.find_element(:accessibility_id, "Learn More").click
  @wait.until { @driver.find_element(:accessibility_id, "Fair All-In-One").displayed? }  
  #Scrolls down twice
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform    
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click
end

#User is at the vehicle details screen and will view Fair Insurance Plan
When(/^User views fair insurance plan$/) do
  puts 'View Fair Insurance Plan'
  #Scrolls down to view Fair Insurance Plan
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform 
  @wait.until { @driver.find_element(:accessibility_id, "Learn More Insurance").displayed? }      
  @driver.find_element(:accessibility_id, "Learn More Insurance").click
  @wait.until { @driver.find_element(:accessibility_id, "Fair Insurance Plan").displayed? }
  #Scrolls down   
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click
end

#User is at the vehicle details screen and will view the Sample Contract
When(/^User views sample contract$/) do
  puts 'View Sample Contract' 
  #Scroll down to view Sample Contract  
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "View Sample Contract").displayed? }
  @driver.find_element(:accessibility_id, "View Sample Contract").click
  @wait.until { @driver.find_element(:accessibility_id, "fair agreement").displayed? } 
  #Scroll down twice 
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform 
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform    
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
end

#User is at the vehicle details screen and will view the 3 day return policy
When(/^User views 3 day return policy$/) do
  puts 'View 3 day return policy'   
  #Scroll down to view 3 day return policy  
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "Learn More Return Policy").displayed? }
  @driver.find_element(:accessibility_id, "Learn More Return Policy").click
  @wait.until { @driver.find_element(:accessibility_id, "3-Day Return Policy").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click  
end