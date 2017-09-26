When(/^I am able to apply a promotion/) do
  step 'User selects Promotions from the hamburger menu'
  step 'User uses promo code TESTCOUPON'
  step 'User applies promo code'
end


#User is in the menu section and selects Promotions
When(/^User selects Promotions from the hamburger menu$/) do
  puts 'Promotions selected from menu'    
  @wait.until { @driver.find_element(:accessibility_id, "hamburger").displayed? }
  @driver.find_element(:accessibility_id, "hamburger").click
  @driver.find_element(:accessibility_id, "PROMOTIONS").click
end


#User is in the promotions screen where user applies a promotion code
When(/^User uses promo code TESTCOUPON$/) do
  puts 'Input Promo Code'  
  @wait.until { @driver.find_element(:accessibility_id, "Enter Promo Code").displayed? }  
  #Taps on the input text field to enter promo code     
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField").click
  #Promo code (testcoupon) is entered 
  @driver.find_element(:accessibility_id, "t").click
  @driver.find_element(:accessibility_id, "e").click
  @driver.find_element(:accessibility_id, "s").click
  @driver.find_element(:accessibility_id, "t").click
  @driver.find_element(:accessibility_id, "c").click
  @driver.find_element(:accessibility_id, "o").click
  @driver.find_element(:accessibility_id, "u").click
  @driver.find_element(:accessibility_id, "p").click
  @driver.find_element(:accessibility_id, "o").click  
  @driver.find_element(:accessibility_id, "n").click
end

#User has entered promo code and now will apply it to account
When(/^User applies promo code$/) do
  puts 'Apply Promo Code'    
  @wait.until { @driver.find_element(:accessibility_id, "Apply Code").displayed? }
  @driver.find_element(:accessibility_id, "Apply Code").click
  @wait.until { @driver.find_element(:accessibility_id, "Code Applied").displayed? } 
  @wait.until { @driver.find_element(:accessibility_id, "Find My Car").displayed? }
  @driver.find_element(:accessibility_id, "Find My Car").click
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }   
end