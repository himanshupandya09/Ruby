Given(/^I launch HRIS url in browser$/)do
	@Login_Page.visit
end

When("I go to Login panel") do
  @Login_Page.selectLoginPanel
end

And(/^I enter credentials and click Login button$/)do
@Login_Page.enterUserName
@Login_Page.enterUserPassword
@Login_Page.clickLoginButton
@Login_Page.clickONSearchField
end

When(/^I enter (.*) on home page search box$/)do |arg|
@Login_Page.enteruserid arg
end

Then(/^I see (.*) on home page search box$/)do |arg|
@Login_Page.employeedetail arg
end


