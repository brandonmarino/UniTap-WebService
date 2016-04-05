
require "httparty"
require "./unitapapi/version"

module Unitapapi
	include HTTParty
  # Your code goes here...
  base_uri "localhost:3000"

  def self.find(id)
  	get("/api/company_cards/#{id}.json").parsed_response
  end 

end

