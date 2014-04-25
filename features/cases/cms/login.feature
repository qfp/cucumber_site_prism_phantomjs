# -*- coding: utf-8 -*-

#@cms
Feature: 编辑登陆
  为了能够进行站点维护
  作为一名编辑
  我希望能够登陆 opencms

  Scenario: 登陆 opencms
    Given 我打开opencms登陆页面
    When  我输入用户名密码, 且点击登陆
    Then  我登陆成功
