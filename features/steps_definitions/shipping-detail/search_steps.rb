# -*- coding: utf-8 -*-

Given(/打开运单查询页面$/) do
  @ShippingPage = ShippingPage.new
  @ShippingPage.load
end

When(/输入运单号码$/) do
  @ShippingPage.enter_bill_numbers '131192595838,131192595829,131192595847'
end

And(/点击查询$/) do
  @ShippingPage.search_bill_number_detail
end

Then(/看到所查询运单详情$/) do
  @ShippingPage.bill_number_details.should include "西安市/咸阳市"
end
