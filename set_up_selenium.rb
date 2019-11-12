# frozen_string_literal: true

require 'selenium-webdriver'
require 'interactor'
require './base'

class SetUpSelenium
  include Zeus::InteractorBase

  def call
    context.driver = Selenium::WebDriver.for :chrome,
      options: options
  end

  private
  def options
    options = Selenium::WebDriver::Chrome::Options.new

    options.add_argument('--headless')

    options
  end
end
