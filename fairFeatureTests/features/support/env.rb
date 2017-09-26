require 'dotenv'
ENV['TEST_ENV'] ||= 'development'
Dotenv.load('.env', ".env.#{ENV['TEST_ENV']}")


require 'capybara/cucumber'
require 'money'
require 'pdf-reader'
require 'rest-client'
require 'selenium-webdriver'
require 'byebug'
require 'awesome_print'
require 'appium_lib'

# Allows formatting Money objects
I18n.enforce_available_locales = false

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
@local_environment = ENV["SAUCE_USERNAME"] || "" == "" and ENV["SAUCE_ACCESS_KEY"] || "" == ""

After do |scenario|
  if scenario.failed?
    timestamp = Time.now.strftime('%Y%m%dT%H%M')
    screenshot_name = "#{scenario.location}_screenshot_#{timestamp}.png"
    screenshot_path = "#{ENV.fetch('CIRCLE_ARTIFACTS', Dir.pwd)}/screenshots/#{screenshot_name}"
    save_screenshot(screenshot_path)
  end
end

def inputField(nameOfEle, input, webDriver)
  ele = webDriver.find_element(name: nameOfEle)
  ele.click
  ele.send_keys input
end

def sendKeysOnKeyboard(driver, input, ele)
  keyboardShown = true
  #Check if Keyboard, if it is
  if keyboardShown
  	puts 'found'
    #'String Split' inputfwea each input manually type each button
    #TODO
  #if not keyboard
  else
  	#Use normal send key state
  	ele.send_keys input
  end
end


def sendKeysNoMatterWhatBecauseImAwesome(driver, input, ele)
  # doubleTap
  # set the clipboard to have input
  # paste
end
def isSlowMode()
  #check environment for slow mode and return true if there is, false if there isnt
end

def testResumptionOfScreen()
  if isSlowMode()
    #Test Resumption of screen
  end
end

def desired_caps()
  @headers = { content_type: 'application/json' }
  email = "#{SecureRandom.uuid}@fair-feature-test.com"
  puts 'This is your email you are logging in ', email
  ### AUTH0 ###
  auth0_jwt = Auth0JwtGenerator.generate(email)
  puts ENV["SAUCE_USERNAME"]
  puts ENV["SAUCE_ACCESS_KEY"]
  ### EXCHANGE ###
  exchange_params = {
    jwt: auth0_jwt
  }.to_json
  response = RestClient.post "#{ENV['FAIR_API_URL']}/api/v1/auth/exchange", exchange_params, @headers
  mockJWT = JSON.parse(response.body)['data']['jwt']

  #TODO TODO TODO ASK AND WHINE AT MIKE WHEN HE HAS TIME
  #upload any ipa file onto sauce storage to ensure latest build

  puts 'This is the jwt ' + mockJWT
  appPath = ENV['FAIR_APPLICATION_PATH']
  
  desired_caps = if false
    puts "Sauce Labs"
    {
      caps: {
        appiumVersion: '1.6.5',
        platformName:  'iOS',
        deviceName: 'iPhone 6 Simulator',
        platformVersion: '10.3',
        deviceOrientation: "portrait",
        app: appPath,
        automationName: "XCUITest",
        processArguments: "{ \t\"args\": [], \t\"env\": { \t\t\"mockStageJWT\": \"#{mockJWT}\" \t} }"
      },
      appium_lib: {
        debug: true,
        wait: 30,
        export_session: true
      }
    }
  else
    puts "Local Simulator"
    {
      caps: {
        platformName: 'iOS',
        deviceName: 'iPhone 6 Simulator',
        udid: ENV["UDID_DEVICE_ID"],
        app: appPath,
        automationName: "XCUITest",
        processArguments: "{ \t\"args\": [], \t\"env\": { \t\t\"mockStageJWT\": \"#{mockJWT}\" \t} }"
      },
      appium_lib: {
        debug: true,
        wait: 30,
        export_session: true
      }
    }
  end
  puts desired_caps
  return desired_caps
end