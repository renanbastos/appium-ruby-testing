# frozen_string_literal: true

require 'appium_lib'
require 'cucumber'
require 'capybara'
require 'touch_action'
require 'rspec'
require 'pg'

desired_caps = Appium.load_appium_txt file:
File.expand_path('appium_android.txt', __dir__), verbose: true
driver = Appium::Driver.new(desired_caps, true)
Appium.promote_appium_methods Object
driver.start_driver
