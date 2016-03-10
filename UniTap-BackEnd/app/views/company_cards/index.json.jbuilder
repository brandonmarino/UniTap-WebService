json.array!(@company_cards) do |company_card|
  json.extract! company_card, :id, :userid, :cardhash, :phonecrc, :activity
  json.url company_card_url(company_card, format: :json)
end
