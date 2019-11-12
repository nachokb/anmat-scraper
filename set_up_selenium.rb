# frozen_string_literal: true

require 'selenium-webdriver'
require 'interactor'
require './base'

class SetUpSelenium
  include Zeus::InteractorBase

  def call
    context.driver = Selenium::WebDriver.for :chrome,
      options: options
    context.wait = Selenium::WebDriver::Wait.new timeout: timeout
  end

  private
  def options
    options = Selenium::WebDriver::Chrome::Options.new

    options.add_argument('--headless') if context.headless

    options
  end

  def timeout
    context.timeout || 20
  end
end
