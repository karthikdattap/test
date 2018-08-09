require 'watir'
require 'page-object'

When(/^I open new browser$/) do
  Selenium::WebDriver::Chrome.driver_path = "/Users/kartheekpachipulusu/Projects/test/drivers/chromedriver"
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"detach" => true})
  driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
  @browser = Watir::Browser.new driver



end

Then(/^I open gmail$/) do
 # sleep 2
  @browser.goto "www.facebook.com"
  email = @browser.text_field(id: 'email')
  email.set "kartheek@gmail.com"
  #next_button = @browser.span(text: 'Next')
  #next_button.click
  password = @browser.text_field(id: "pass")
  password.set "abcd"
  login_button = @browser.button(text: "Log In")
  login_button.click

end