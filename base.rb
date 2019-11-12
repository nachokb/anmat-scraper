# frozen_string_literal: true

module Zeus
  module InteractorBase
    def self.included(target)
      target.send :include, Interactor

      target.before :validate_context!
    end

    def expects!(key)
      context.fail! message: "Key is missing: #{key}" if context[key].nil?
    end

    # OVERRIDE
    def validate_context!; end
  end
end
