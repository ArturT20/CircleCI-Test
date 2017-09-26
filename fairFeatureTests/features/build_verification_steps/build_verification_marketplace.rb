When(/^I navigate through marketplace/) do
  step 'User selects All Cars from marketplace'
  step 'User selects Brand from marketplace'
  step 'User selects Luxe from marketplace'
  step 'User selects Daily from marketplace'
  step 'User selects Green from marketplace'
  step 'User selects Family from marketplace'
  step 'User selects Utility from marketplace'
  step 'User selects CPO from marketplace'
  step 'User selects Dealer from marketplace'
  step 'User selects Rusnak BMW dealer'
  step 'User adjust price slider'  
  step 'User selects a car'
end


#User is now at the Marketplace and will select All Cars and then go back to marketplace
When(/^User selects All Cars from marketplace$/) do
  puts 'All Cars selected from marketplace' 
  #Sleep to wait for marketplace inventory to load. The wait element here does not always work. Using sleep until a better solution
  sleep (5)  
  @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? } 
  #Taps on All Cars       
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]").click
  @wait.until { @driver.find_element(:accessibility_id, "ALL VEHICLES").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click 
end

#User is now at the Marketplace and will select Brand and then go back to marketplace
When(/^User selects Brand from marketplace$/) do
  puts 'Brand selected from marketplace' 
  #Taps on Brand
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[2]").click
  @wait.until { @driver.find_element(:accessibility_id, "SHOP BY BRAND").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click  
end

#User is now at the Marketplace and will select Luxe and then go back to marketplace
When(/^User selects Luxe from marketplace$/) do   
  puts 'Luxe selected from marketplace' 
  #Taps on Luxe
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[3]").click
  @wait.until { @driver.find_element(:accessibility_id, "LUXE").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click
end

#User is now at the Marketplace and will select Daily and then go back to marketplace
When(/^User selects Daily from marketplace$/) do  
  puts 'Daily selected from marketplace' 
  #Scrolls down to select Daily
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  #Taps on Daily  
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[4]").click
  @wait.until { @driver.find_element(:accessibility_id, "DAILY").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click
end

#User is now at the Marketplace and will select Green and then go back to marketplace
When(/^User selects Green from marketplace$/) do  
  puts 'Green selected from marketplace' 
  #Taps on Green
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[5]").click
  @wait.until { @driver.find_element(:accessibility_id, "GREEN").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click
end

#User is now at the Marketplace and will select Family and then go back to marketplace
When(/^User selects Family from marketplace$/) do
  puts 'Family selected from marketplace' 
  #Scrolls down to select Family
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  #Taps on Family
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[6]").click
  @wait.until { @driver.find_element(:accessibility_id, "FAMILY").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click
end

#User is now at the Marketplace and will select Utility and then go back to marketplace
When(/^User selects Utility from marketplace$/) do  
  puts 'Utility selected from marketplace' 
  #Taps on Utility
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[7]").click
  @wait.until { @driver.find_element(:accessibility_id, "TRUCKS AND SUVS").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click
end

#User is now at the Marketplace and will select CPO and then go back to marketplace
When(/^User selects CPO from marketplace$/) do
  puts 'CPO selected from marketplace' 
  #Scrolls down to select CPO
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  #Taps on CPO
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[8]").click
  @wait.until { @driver.find_element(:accessibility_id, "CERTIFIED PRE-OWNED").displayed? }
  @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
  @driver.find_element(:accessibility_id, "Back").click
end

#User is now at the Marketplace and will select Dealer
When(/^User selects Dealer from marketplace$/) do
  puts 'Dealer selected from marketplace'        
  #Taps Dealer
  @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[9]").click
  @wait.until { @driver.find_element(:accessibility_id, "DEALERSHIPS").displayed? }
end

#User is now at the Dealer screen and will select Century West BMW
When(/^User selects Rusnak BMW dealer$/) do
  puts 'Rusnak BMW selected from Dealer list'   
  #Scrolls down to view Rusnak BMW
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  Appium::TouchAction.new.press({x: 183, y: 550}).move_to({x: 5, y: -407}).release.perform
  @wait.until { @driver.find_element(:accessibility_id, "Rusnak BMW").displayed? }   
  @driver.find_element(:accessibility_id, "Rusnak BMW").click  
end

#User is now at the Century West BMW Dealer screen and user will adjust the price slider
When(/^User adjust price slider$/) do
  puts 'Adjust Price Slider'   
  @wait.until { @driver.find_element(:accessibility_id, "RUSNAK BMW").displayed? }  
  @wait.until { @driver.find_element(:accessibility_id, "Favorite Button").displayed? }
  #Price slider adjust
  Appium::TouchAction.new.press({x: 85, y: 71}).move_to({x: 100, y: 30}).release.perform 
  #TODO - Wait element for loading progress bar 
  sleep(5)
end

#User will select a car to purchase from Century West BMW Dealer
When(/^User selects a car$/) do
  puts 'Select A Car'   
  @wait.until { @driver.find_element(:accessibility_id, "Favorite Button").displayed? }
  #Taps on the first car shown in list 
  @driver.find_element(:xpath, "(//XCUIElementTypeCell[@name=\"Vehicle Table Cell\"])[1]").click   
end