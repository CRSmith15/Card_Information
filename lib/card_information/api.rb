require "httparty"

class CardInformation::API 
  def self.get_cards
    resp = HTTParty.get('https://api.magicthegathering.io/v1/cards')
    
    cards = resp["cards"]
    CardInformation::Magic_Card.new_from_collection(cards)
  end
 
end