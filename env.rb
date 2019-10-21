require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'yaml'

#browser = Browser.new(:remote, :url => "https://hris.qainfotech.com/login.php" , :desired_capabilities => WebDriver::Remote::Capabilities.chrome)

Before do
@browser=Selenium::WebDriver.for :chrome
@Login_Page = Login_Page.new(@browser)
end