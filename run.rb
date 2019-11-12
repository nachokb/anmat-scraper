#!/usr/bin/env ruby
# frozen_string_literal: true

require './anmat_scraper'

result = AnmatScraper.call url: 'https://google.com'

return if result.success?

puts "ERROR! #{result.to_h}"
