class Login_Page

path = 'C:\\Users\\himanshupandya\\eclipse-workspace\\Cucumber Project\\Features\\UserData.yml'
yml=YAML.load_file(path)
Username= yml['User']['username']
Password= yml['User']['password']

attr_accessor  :username, :userpassword , :loginbtn , :loginpanel

def initialize browser
@browser= browser
p @browser
#p @browser.methods
visit

#p @browser.find_element(:id => 'txtUserName').methods
@username = @browser.find_element(:css => 'input#txtUserName')
@userpassword = @browser.find_element(:css => 'input#txtPassword')
@loginbtn = @browser.find_element(:css => '[name="Submit"]')


end

def visit
#sleep 3
p @browser.methods
@browser.manage.window.maximize
@browser.get "https://hris.qainfotech.com/login.php"
end

def selectLoginPanel
@loginpanel=@browser.find_element(:css => 'li:nth-child(1)>a>span')
sleep 1
@loginpanel.click
end


def enterUserName()
sleep 1
@browser.execute_script("document.getElementById('txtUserName').value='#{Username}'")

end

def enterUserPassword()


@browser.execute_script("document.getElementById('txtPassword').value='#{Password}'")
end

def clickLoginButton
sleep 1
@browser.execute_script("$('[value=\"Sign In\"]')[0].click()")
end

def verifyHomePageHeader()
 elem=:current_url

 sleep 1 
 RSpec.describe elem do
	it { is_expected.to contain_exactly("timesheet") , "User is on home page!"}
	end
end

def clickONSearchField()
sleep 3
@browser.execute_script("$('[id=\"engTimeSearch\"]')[0].click()")
end

def enteruserid(user_id)
@searchfield=@browser.find_element(:css => 'input#engTimeSearch')
sleep 3
@searchfield.send_key user_id
sleep 3
end

def employeedetail(user_detail)
ele= @browser.find_element(:css ,'#dvBreadCrubs>h4').text
def assert_contains(ele, user_detail)
        assert_match(ele,user_detail)
end

end
end