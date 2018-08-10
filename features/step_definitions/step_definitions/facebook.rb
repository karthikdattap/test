# When(/^I open new browser$/) do
#   Selenium::WebDriver::Chrome.driver_path = "/Users/kartheekpachipulusu/Projects/test/drivers/chromedriver"
#   caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"detach" => true})
#   driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
#   @browser = Watir::Browser.new driver
#
#
#
# end

Then(/^I open facebook$/) do
  # sleep 2
  @browser.goto "www.facebook.com"
 # email = @browser.text_field(id: 'email')
 # email.set "kartheek@gmail.com"
  #next_button = @browser.span(text: 'Next')
  #next_button.click
 # password = @browser.text_field(id: "pass")
 # password.set "abcd"
  #login_button = @browser.button(text: "Log In")
  #login_button.click
  # first_name = @browser.text_field(id: "u_0_9")
  first_name = @browser.div(text: 'First name').parent.text_field
  first_name.set "kartheek"
  last_name = @browser.div(xpath: '//*[@id="fullname_field"]/div[1]/div[2]').text_field
  last_name.set "pachi"
  mobile = @browser.div(xpath: '//*[@id="reg_form_box"]/div[2]').text_field
  mobile.set "123456"
  @browser.send_keys :tab
  @browser.send_keys "password"
  birthday_month = @browser.select(id: "month")
  birthday_month.select "Aug"
  birthday_day = @browser.select(id: "day")
  birthday_day.select "8"
  birthday_year = @browser.select(id: "year")
  birthday_year.select "1993"
  sex_male = @browser.input(name: "sex", value: "2")
  sex_male.click
  signup_button = @browser.button(text: "Sign Up")
  signup_button.click


end