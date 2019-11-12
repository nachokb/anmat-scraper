# frozen_string_literal: true

module Zeus
  module InteractorBase
    def self.included(target)
      target.send :include, Interactor
      target.send :include, Delegations
      target.send :include, FormHelpers

      target.before :validate_context!
    end

    def expects!(key)
      context.fail! message: "Key is missing: #{key}" if context[key].nil?
    end

    # OVERRIDE
    def validate_context!; end
  end

  module Delegations
    def driver
      context.driver
    end

    def url
      context.url
    end

    def wait
      context.wait
    end
  end

  # #wait #driver
  module FormHelpers
    def fill(target, with:)
      elem(target).send_keys with
    end

    def click(target)
      elem(target).click
    end

    def elem(target)
      wait.until {
        driver.find_element :css,
          target
      }
    end
  end
end
