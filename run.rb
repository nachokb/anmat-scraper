#!/usr/bin/env ruby
# frozen_string_literal: true

require './anmat_scraper'

result = AnmatScraper.call url: 'https://servicios.pami.org.ar/vademecum/views/consultaPublica/listado.zul',
  timeout: 20,
  headless: false

return if result.success?

puts "ERROR! #{result.to_h}"
