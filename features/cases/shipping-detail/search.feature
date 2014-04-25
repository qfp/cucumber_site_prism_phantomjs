# -*- coding: utf-8 -*-

@shipping
Feature: 运单查询
  为了能够查看运单信息
  作为一名访客
  我希望能够通过输入运单号来查询运单详情

  Scenario: 查询运单详情
    Given  我已经打开运单查询页面
    When  我输入运单号码
    And 点击查询
    Then  我可以看到所查询运单详情
