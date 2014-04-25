
class LoginPage  <  SitePrism::Page
  set_url "#{BASE_URL}/system/login/index.html"

  element :user_name_input, '#ocUname'
  element :user_password_input, '#ocPword'
  element :login_button, '.loginbutton'

  def login_with(username, password)
    user_name_input.set username
    user_password_input.set password
    login_button.click
    sleep 2
  end
end

=begin
class LoginPage
  include PageObject

  page_url "#{BASE_URL}/system/login/index.html"

  text_field :username, id: 'ocUname'
  text_field :password, id: 'ocPword'
  button :login, class: 'loginbutton'

  def login_with(username, password)
    @username = username
    @password = password
    login
  end

end
=end
