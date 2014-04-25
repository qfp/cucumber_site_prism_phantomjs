# -*- coding: utf-8 -*-

@cms
Feature: 管理主横幅图片
  为了能够管理主横幅图片
  作为一名编辑
  我希望能够替换主横幅图片
  Background:
    Given 我已经登陆opencms

  Scenario: 替换主横幅图片
    Given 我打开首页
    When  我激活cms编辑按钮
    And   我点击主横幅图片编辑按钮
    And   我替换主横幅图片为新的图片
    Then  我可以看到首页主横幅图片显示为新的图片
