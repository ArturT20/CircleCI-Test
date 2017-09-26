When(/^I favorite a car/) do
   step 'User finds a car and favorites car'
   step 'User goes to favorites screen from favorites button'
   step 'User selects favorited car'
end

#User is at the marketplace screen. User  will find a car and add car to favorites
When(/^User finds a car and favorites car$/) do
   puts 'Favorite Car'   
   #Sleep to wait for marketplace to load. The wait element here does not always work. Using sleep until I find a better solution
   sleep (5)
   @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }  
   #All Cars is selected from marketplace
   @driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"fair - no mitek\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]").click
   @wait.until { @driver.find_element(:accessibility_id, "Favorite Button").displayed? }
   @driver.find_element(:accessibility_id, "Favorite Button").click
end

#A car has been favorited, now the user will view the favorited car in the favorites section 
When(/^User goes to favorites screen from favorites button$/) do
   puts 'View Favorites'    
   @wait.until { @driver.find_element(:accessibility_id, "Nav Bar Favorite Button").displayed? }
   @driver.find_element(:accessibility_id, "Nav Bar Favorite Button").click
   @wait.until { @driver.find_element(:accessibility_id, "FAVORITES").displayed? }
end

#User will now remove favorited car and go back to marketplace 
When(/^User selects favorited car$/) do
   puts 'Select favorited Car'   
   @wait.until { @driver.find_element(:accessibility_id, "Favorite Button").displayed? }
   #Taps on the first car shown in favorites section 
   @driver.find_element(:xpath, "(//XCUIElementTypeCell[@name=\"Vehicle Table Cell\"])[1]").click 
   @wait.until { @driver.find_element(:accessibility_id, "Favorite Button").displayed? }    
   @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
   @driver.find_element(:accessibility_id, "Back").click
   puts 'Remove favorited Car'
   @wait.until { @driver.find_element(:accessibility_id, "Favorite Button").displayed? }
   @driver.find_element(:accessibility_id, "Favorite Button").click
   #Insuring car was removed from favorites 
   @wait.until { @driver.find_element(:accessibility_id, "Once you select some cars you like, you'll be able to see them all right here.").displayed? }  
   @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
   @driver.find_element(:accessibility_id, "Back").click
   @wait.until { @driver.find_element(:accessibility_id, "ALL VEHICLES").displayed? }  
   @wait.until { @driver.find_element(:accessibility_id, "Back").displayed? }
   @driver.find_element(:accessibility_id, "Back").click
   @wait.until { @driver.find_element(:accessibility_id, "CATEGORIES").displayed? }  
end