require 'parse-ruby-client'

Parse.create :application_id => "r05g6kTnuuIxBdl6J5g1skAcGEuNqsEBsvCC8GC2", # required
             :api_key        => "GqBgYwbbQ2efQtn98xtsyHth81Ps4WaQtFxH1ODc", # required
             :quiet          => true | false,  # optional, defaults to false
             :host           => 'http://localhost:1337', # optional, defaults to 'https://api.parse.com'
             :path           => '/parse', # optional, defaults to '/1'