# frozen_string_literal: true

require 'byebug'
require 'interactor'
require './set_up_selenium'
require './visit_page'
require './get_listing'
require './save_results'

class AnmatScraper
  include Interactor::Organizer

  organize SetUpSelenium,
    VisitPage,
    GetListing,
    SaveResults
end
