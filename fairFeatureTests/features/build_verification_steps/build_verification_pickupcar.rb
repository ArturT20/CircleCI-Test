When(/^I pickup the car/) do
  step 'Dealer completes the delivery of car'
end

#This is when the dealer logs into the dealer portal to complete the delivery for user
When(/^Dealer completes the delivery of car$/) do 
  puts 'Picking Up Car'  
  @web_driver.get("https://dealer.stage.fair.engineering/")
  @web_driver.manage.timeouts.implicit_wait = 10 
  inputField('email', 'automation@fair.com', @web_driver)
  inputField('password', 'tester', @web_driver)
  @web_driver.find_element(xpath: '//*[@type="submit"]').click 
  #TODO - Find a better solution to replace sleep, need sleep for web selenium for now  
  sleep(2) 
  @web_driver.find_element(link: 'Deliveries').click
  sleep(2)
  @web_driver.find_element(xpath: "//*[contains(text(), \"#{@current_stock_id}\")]").click
  sleep(2)
  puts "ID Verification"
  @web_driver.find_element(id: 'confirm-license-button-yes').click
  sleep(2)
  puts "Insurance Verification"
  @web_driver.find_element(id: 'confirm-insurance-button-yes').click
  sleep(2)
  puts "Customer takes delivery"
  @web_driver.find_element(id: 'confirm-delivery-button-yes').click
  sleep(2)
  puts "Confirming"
  @web_driver.find_element(id: 'done-button').click
end