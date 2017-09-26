When (/^I go through preflight tunnel/) do 
  step 'User links bank account'
  step 'User provides own insurance'  
  step 'User provides fair insurance' 
end 

#This is when the  preflight screen is forced. User will need to link bank account and provide insurance to continue with checkout
#User links bank account using Fidelity as the bank
When(/^User links bank account$/) do
  puts 'Link Bank Account'  
  @wait.until { @driver.find_element(:accessibility_id, "Link My Bank").displayed? }
  @driver.find_element(:accessibility_id, "Link My Bank").click
  @wait.until { @driver.find_element(:accessibility_id, "Fidelity").displayed? }
  @driver.find_element(:accessibility_id, "Fidelity").click
  #User enters bank account username
  @wait.until { @driver.find_element(:accessibility_id, "u").displayed? }
  @driver.find_element(:accessibility_id, "u").click
  @driver.find_element(:accessibility_id, "s").click
  @driver.find_element(:accessibility_id, "e").click
  @driver.find_element(:accessibility_id, "r").click
  @driver.find_element(:accessibility_id, "more").click
  @driver.find_element(:accessibility_id, "shift").click
  @driver.find_element(:accessibility_id, "_").click
  @driver.find_element(:accessibility_id, "more").click
  @driver.find_element(:accessibility_id, "g").click
  @driver.find_element(:accessibility_id, "o").click
  @driver.find_element(:accessibility_id, "o").click  
  @driver.find_element(:accessibility_id, "d").click  
  #Taps password input field on plaid screen 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeSecureTextField").click
  #User enters bank account password
  @wait.until { @driver.find_element(:accessibility_id, "p").displayed? }
  @driver.find_element(:accessibility_id, "p").click
  @driver.find_element(:accessibility_id, "a").click
  @driver.find_element(:accessibility_id, "s").click
  @driver.find_element(:accessibility_id, "s").click
  @driver.find_element(:accessibility_id, "more").click
  @driver.find_element(:accessibility_id, "shift").click
  @driver.find_element(:accessibility_id, "_").click
  @driver.find_element(:accessibility_id, "more").click  
  @driver.find_element(:accessibility_id, "g").click
  @driver.find_element(:accessibility_id, "o").click
  @driver.find_element(:accessibility_id, "o").click  
  @driver.find_element(:accessibility_id, "d").click    
  @wait.until { @driver.find_element(:accessibility_id, "Submit").displayed? }
  @driver.find_element(:accessibility_id, "Submit").click
  @wait.until { @driver.find_element(:accessibility_id, "Continue").displayed? }
  @driver.find_element(:accessibility_id, "Continue").click
end

#User chooses to provide their own insurance and proceeds with the necessary steps to add own insurance
When(/^User provides own insurance$/) do
  @wait.until { @driver.find_element(:accessibility_id, "Provide / Purchase My Insurance").displayed? }  
  puts 'View Insurance Requirements'
  @driver.find_element(:accessibility_id, "See Fair Insurance Requirements").click  
  @wait.until { @driver.find_element(:accessibility_id, "Insurance Requirements").displayed? }    
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click     
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click
  puts 'Provide My Own Insurance'
  @wait.until { @driver.find_element(:accessibility_id, "I'll Provide My Own Insurance").displayed? }
  @driver.find_element(:accessibility_id, "I'll Provide My Own Insurance").click
  #User selects the first input field to enter Insurance Provider
  @wait.until { @driver.find_element(:accessibility_id, "VERIFY YOUR INFO").displayed? } 
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]").click  
  #User selects the second input field to enter Policy Number
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[2]").click    
  #User selects the third input field to enter Policy Exp Date
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[3]").click    
  @wait.until { @driver.find_element(:accessibility_id, "Done").displayed? }
  @driver.find_element(:accessibility_id, "Done").click
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click
end  

#User chooses Fair Insurance and proceeds with the necessary steps to add a Fair Insurance 
When(/^User provides fair insurance$/) do  
  puts 'Views Insurance Information Disclosure'
  @wait.until { @driver.find_element(:accessibility_id, "Insurance Information Disclosure").displayed? }      
  @driver.find_element(:accessibility_id, "Insurance Information Disclosure").click  
  @wait.until { @driver.find_element(:accessibility_id, "close btn").displayed? }
  @driver.find_element(:accessibility_id, "close btn").click
  puts 'Get Quote'        
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click
  puts 'Add Fair Insurance'
  @wait.until { @driver.find_element(:accessibility_id, "Here's Your Fair Insurance Rate").displayed? } 
  #Scroll down twice   
  Appium::TouchAction.new.press({x: 171, y: 500}).move_to({x: 1, y: -312}).release.perform
  Appium::TouchAction.new.press({x: 171, y: 500}).move_to({x: 1, y: -312}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "Add Fair Plan").displayed? }      
  @driver.find_element(:accessibility_id, "Add Fair Plan").click  
  @wait.until { @driver.find_element(:accessibility_id, "Success").displayed? }  
  #Preflight proccess is complete
  @wait.until { @driver.find_element(:accessibility_id, "Next").displayed? }
  @driver.find_element(:accessibility_id, "Next").click   
end