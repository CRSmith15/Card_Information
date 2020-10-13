

class CardInformation::CLI 
  def call 
    puts "Welcome to a Magic the Gathering card information CLI!"
    list_cards
    magic_cards
    goodbye
  end
  
  def list_cards
    puts "Here are all of the cards."
    @all_cards = CardInformation::Magic_Card.all
    @all_cards.each.with_index(1) do |card, i|
      puts "#{i}. #{card.name} -Color: #{card.colors} -Types: #{card.types} -Converted Mana Cost: #{card.cmc}"
    end
      
  end
  
  def magic_cards 
    
    input = nil 
    while input != "exit" 
      puts "Enter the number of card that you would like more info on, type list to see the list again or type exit."
      input = gets.strip.downcase
      if input.to_i > 0 
        all_cards = @all_cards[input.to_i-1]
        puts "Name: #{all_cards.name}"
        puts "Color(s): #{all_cards.colors}" 
        puts "Type(s): #{all_cards.types}" 
        puts "Subtype(s): #{all_cards.subtypes}"
        puts "Mana Cost: #{all_cards.manaCost}"
        puts "Converted Mana Cost: #{all_cards.cmc}"
        puts "Power: #{all_cards.power}"
        puts "Toughness: #{all_cards.toughness}"
        puts "Description: #{all_cards.text}"
        elsif input == "list"
          list_cards
        else
          puts "Not sure what you want to do."
        end
      end
    end
    
    def goodbye
      puts "Happy Gathering!"
    end

  
end