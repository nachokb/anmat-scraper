# frozen_string_literal: true

require 'interactor'
require './base'

class SaveResults
  include Zeus::InteractorBase

  def call
    File.open 'results.txt', 'wb' do |file|
      file << context.name
    end
  end

  private
  def validate_context!
    expects! :name
  end
end
