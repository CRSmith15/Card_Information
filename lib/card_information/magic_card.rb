class CardInformation::Magic_Card
  attr_accessor :name, :colors, :manaCost, :cmc, :power, :toughness, :types, :subtypes, :text, :id, :colorIdentity, :type, :supertypes, :rarity, :set, :setName, :artist, :number, :layout, :multiverseid, :imageUrl, :rulings, :foreignNames, :printings, :originalText, :originalType, :legalities, :flavor, :variations, :color
  @@all = []
  
  def initialize(attrs)
    attrs_from_hash(attrs)
    save
  end
  
  def self.new_from_collection(cards)
    cards.each do |attr|
      new(attr)
    end
  end
  
  def attrs_from_hash(attrs)
    attrs.each do |x, y|
      send("#{x}=", y)
    end
  end
  
  def self.get_cards
    CardInformation::API.get_cards
    all 
  end
  
  def self.all 
    get_cards if @@all == []
    @@all
  end
  
  def save 
    @@all << self 
  end
  
  def self.find_by_id(input)
    all.find{|x| x.id == input.to_i}
  end
  
  
end