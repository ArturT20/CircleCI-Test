Given(/^I am a user, superuser and a dealer using the app on a simulator$/) do
  step 'I setup the app driver'
  step 'I setup the web driver'
end

When(/^I run through the app from onboarding to picking up the car$/) do
  step 'I login with appium' 
  step 'I am qualified through onboarding'
  step 'I can navigate through the menu'
  step 'I am able to apply a promotion'
  step 'I favorite a car'
  step 'I use the search interface'  
  step 'I navigate through marketplace'
  step 'I navigate through vehicle detail screen'  
  step 'I start checkout for a car'
  step 'I go through preflight tunnel'  
  step 'I complete checkout for a car'  
  step 'I sign contracts'
  step 'I pickup the car'
  step 'I log out and log back in'
end

Then(/^I should have a car$/) do
  step 'I ensure I have a car in my cars page'
end

Given(/^I setup the app driver$/) do
  @driver = Appium::Driver.new(desired_caps())
  @wait = Selenium::WebDriver::Wait.new(:timeout => 60)
end

Given(/^I setup the web driver$/) do
  if @sauce_labs_environment
    caps = Selenium::WebDriver::Remote::Capabilities.chrome()
    caps['platform'] = 'macOS 10.12'
    caps['version'] = '61.0'
    @web_driver = Selenium::WebDriver.for(:remote,
      :url => "https://arturt:9d552718-86bf-4489-ba83-7365d32fa57b@ondemand.saucelabs.com:443/wd/hub",
      :desired_capabilities => caps)
  else
    @web_driver = Selenium::WebDriver.for :chrome
  end
end