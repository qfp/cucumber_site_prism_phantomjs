require 'yaml'
require 'rest_client'
require "rspec"
require "capybara"
require "capybara/rspec"
require "capybara/cucumber"
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'site_prism'
#require 'page-object'
require "pry"
require "securerandom"

BASE_URL = YAML.load_file(File.dirname(__FILE__) + '/../../config/cucumber.yml')[ENV['env']]["base_url"]

#BROWSER = Selenium::WebDriver.for :chrome

Dir[File.dirname(__FILE__) + '/../impl/*/*/*.rb'].each { |file|
  require file
}

Dir[File.dirname(__FILE__) + '/../impl/*/*.rb'].each { |file|
  require file
}

if ENV['HEADLESS'] == 'true'

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
        app,
        window_size: [1280, 1024],
        debug: false
    )
  end
  Capybara.default_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist

else

  Capybara.configure do |config|
    config.default_driver = :chrome
    config.javascript_driver = :chrome
    config.run_server = false
    config.default_selector = :css
    config.default_wait_time = 5

    #capybara 2.1 config options
    config.match = :prefer_exact
    config.ignore_hidden_elements = false
  end

  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

end
