# -*- coding: utf-8 -*-

Given(/^我打开opencms登陆页面$/) do
  @LoginPage = LoginPage.new
  @LoginPage.load
end

When(/^我输入用户名密码, 且点击登陆$/) do
  @LoginPage.login_system
end

Then(/^我登陆成功$/) do
  @LoginPage.current_url.should include "/opencms/index.html"
end

