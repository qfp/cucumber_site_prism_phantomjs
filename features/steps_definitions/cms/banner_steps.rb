# -*- coding: utf-8 -*-

Given(/^我已经登陆opencms$/) do
  @login_page = LoginPage.new
  @login_page.load
  @login_page.login_with 'Admin', 'admin'
end

Given(/^我打开首页$/) do
  @index_page = IndexPage.new
  @index_page.load
end


When(/^我激活cms编辑按钮$/) do
  @index_page.active_cms_button
end

When(/^我点击主横幅图片编辑按钮$/) do
  @index_page.click_banner_edit_button
end

When(/^我替换主横幅图片为新的图片$/) do
  @index_page.replace_banner_image
end

Then(/^我可以看到首页主横幅图片显示为新的图片$/) do
  pending # express the regexp above with the code you wish you had
end
