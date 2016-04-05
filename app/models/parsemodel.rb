class Parsemodel < ActiveRecord::Base

require 'parse-ruby-client'

client = Parse.create :application_id => "r05g6kTnuuIxBdl6J5g1skAcGEuNqsEBsvCC8GC2", # required
             :api_key        => "GqBgYwbbQ2efQtn98xtsyHth81Ps4WaQtFxH1ODc", # required
             :quiet          => true | false,  # optional, defaults to false
             :host           => 'http://localhost:1337', # optional, defaults to 'https://api.parse.com'
             :path           => '/parse', # optional, defaults to '/1'



@parseuser = client.object('User1')
@parseuser["username"] = 'user1@hotmail.com'
@parseuser["password"] = '12345678'
#user['birthday']      = Parse::Date.new('1980-12-25')
@parseuser.save

@parseuser.increment 'login_count'

# Queries
# cls = 'GameScore'
# (1..100).each do |i|
#   score = client.object(cls)
#   score['score'] = i
#   score.save
# end

# client.query(cls).greater_eq('score', 10).less_eq('score', 20).get

# client.query(cls).value_in('score', [10, 20, 30, 40]).get

# Pushes
#push = client.push(alert: "I'm sending this push to all my app users!")
#push.save

end
