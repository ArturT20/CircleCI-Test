When(/^I complete checkout for a car/) do
  step 'Dealer completes checkout'
  step 'User moves to next steps in checkout'
  step 'User verifies promo code is applied'
  step 'User provides and adds own insurance'  
  step 'User verifies provided insurance is shown'
  step 'User toggles back to fair insurance'  
  step 'User adds wear and tear package'
  step 'User places order'
  step 'User confirms last 4 SSN'
  step 'User consents to credit check authorization'
end
  
#This is when the dealer logs into the dealer portal to complete the checkout for user
When(/^Dealer completes checkout$/) do
  puts 'Dealer Starts Checkout'  
  @web_driver.get("https://dealer.stage.fair.engineering/")
  @web_driver.manage.timeouts.implicit_wait = 10 
  inputField('email', 'automation@fair.com', @web_driver)
  inputField('password', 'tester', @web_driver)
  @web_driver.find_element(xpath: '//*[@type="submit"]').click
  #TODO - Find a better solution to replace sleep, need sleep for web selenium for now  
  sleep(2)
  @web_driver.find_element(xpath: '//*[@id="ordersTable"]/tbody/tr/td').click
  order_span = @web_driver.find_element(xpath: '//*[@id="ordersTable"]/tbody/tr/td[4]')
  @current_stock_id = order_span.text
  sleep(2)
  puts 'Car Is Available'
  @web_driver.find_element(id: 'availableButton').click
  sleep(2)
  puts 'Mileage Input'   
  mileageInput = @web_driver.find_element(id: 'mileageInput')
  mileageInput.click
  mileageInput.send_keys '0'
  @web_driver.find_element(id: 'checkoutSubmit').click
  sleep(2)
  puts 'One Time Fees'
  @web_driver.find_element(id: 'checkoutSubmit').click
  sleep(2)
  puts 'Insurance'
  @web_driver.find_element(id: 'checkoutSubmit').click
  sleep(2)
  puts 'Buyers'
  @web_driver.find_element(id: 'checkoutSubmit').click
  sleep(2)
  puts 'Customer Acknowledgement'
  @web_driver.find_element(name: 'front_license_plate_equipped').click
  @web_driver.find_element(id: 'checkoutSubmit').click
  @web_driver.find_element(id: 'checkoutSubmit').click
  sleep(2)
  @web_driver.find_element(xpath: '//*[@id="dealerContractRow"]/div/form/div/div[2]/div/div/div[1]/div/label').click
  sleep(2)
  puts 'Dealer Completes Checkout'   
  @web_driver.find_element(id: 'checkoutSubmit').click
  sleep(2)
end

#User reloads My Car screen to refresh the changes made by the dealer
When(/^User moves to next steps in checkout$/) do
  puts 'Refresh screen'  
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "PROMOTIONS").click   
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "MY CAR").click
  #User is now in the final order review screen and will complete the checkout
  @wait.until { @driver.find_element(:accessibility_id, "Final Order Review").displayed? }  
end

#User verifies promo code was applied on the final order screen
When(/^User verifies promo code is applied$/) do
  puts 'Add own insurance'    
  #Scrolls down to view promo code section
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "*Promo code applied.").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "TESTCOUPON").displayed? }    
end

#User provides their own insurance from the final order review screen
When(/^User provides and adds own insurance$/) do
  puts 'Add own insurance'    
  #Scrolls down to view Provide Your Insurance tab 
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform      
  @wait.until { @driver.find_element(:accessibility_id, "Provide Your Insurance").displayed? }  
  @driver.find_element(:accessibility_id, "Provide Your Insurance").click  
  puts 'Provide My Own Insurance' 
  @wait.until { @driver.find_element(:accessibility_id, "Provide My Insurance").displayed? }  
  @driver.find_element(:accessibility_id, "Provide My Insurance").click    
  #User selects the first input field to enter Insurance Provider
  @wait.until { @driver.find_element(:accessibility_id, "VERIFY YOUR INFO").displayed? } 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]").click  
  @wait.until { @driver.find_element(:accessibility_id, "H").displayed? }
  @driver.find_element(:accessibility_id, "H").click
  @driver.find_element(:accessibility_id, "i").click  
  #User selects the second input field to enter Policy Number
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]").click    
  @wait.until { @driver.find_element(:accessibility_id, "more").displayed? }
  @driver.find_element(:accessibility_id, "more").click   
  @driver.find_element(:accessibility_id, "5").click     
  #User selects the third input field to enter Policy Exp Date
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]").click    
  #Scrolls up to select month
  Appium::TouchAction.new.press({x: 87, y: 611}).move_to({x: 3, y: -101}).release.perform
  #Scrolls up to select day
  Appium::TouchAction.new.press({x: 208, y: 611}).move_to({x: -5, y: -89}).release.perform
  #Scrolls up to select year
  Appium::TouchAction.new.press({x: 282, y: 613}).move_to({x: 1, y: -92}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "Done").displayed? }
  @driver.find_element(:accessibility_id, "Done").click
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click
  @wait.until { @driver.find_element(:accessibility_id, "VERIFY YOUR INFO").displayed? } 
  #Scroll down twice to see and select Got It! 
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform  
  @wait.until { @driver.find_element(:accessibility_id, "Got It!").displayed? }
  @driver.find_element(:accessibility_id, "Got It!").click  
  #Scroll down to view insurance provided
end  

#User verifies insurance provided is shown 
When(/^User verifies provided insurance is shown$/) do 
  #Scroll to view insurance
  @wait.until { @driver.find_element(:accessibility_id, "Final Order Review").displayed? }    
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform         
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform    
  @wait.until { @driver.find_element(:accessibility_id, "Hi").displayed? }  
end

#User toggles back to fair insurance by tapping the Fair Insurance tab 
When(/^User toggles back to fair insurance$/) do    
  @wait.until { @driver.find_element(:accessibility_id, "Fair Insurance").displayed? }
  @driver.find_element(:accessibility_id, "Fair Insurance").click    
end

#This is when the user adds the wear and tear package on the final order screen
When (/^User adds wear and tear package/) do 
  puts 'Add Wear & Tear Package'
  #Scrolls to view wear and tear section
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  #Selects wear & tear
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[7]/XCUIElementTypeOther/XCUIElementTypeSwitch").click  
end

#This is when the user completes the checkout by selecting place order & create contract 
When(/^User places order$/) do
  puts 'Place Order & Create Contract'  
  #Scrolls to view Place Order & Create Contract"
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform        
  @wait.until { @driver.find_element(:accessibility_id, "Place Order & Create Contract").displayed? }
  @driver.find_element(:accessibility_id, "Place Order & Create Contract").click
end

#This is the screen where the user needs to verify the last 4 of ssn to continue
When(/^User confirms last 4 SSN$/) do
  #TODO - Clear input field and manually add last 4
  puts 'Verify SSN'  
  @wait.until { @driver.find_element(:accessibility_id, "circle button ok").displayed? }
  @driver.find_element(:accessibility_id, "circle button ok").click
end

#This is the screen where the user needs to authorize the credit check consent to continue
When(/^User consents to credit check authorization$/) do
  puts 'Credit Check Consent'  
  @wait.until { @driver.find_element(:accessibility_id, "Authorize").displayed? }
  @driver.find_element(:accessibility_id, "Authorize").click
end