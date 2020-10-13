require_relative "./card_information/version"
require_relative "./card_information/cli"
require_relative "./card_information/magic_card"
require_relative "./card_information/api"
require "httparty"
require "pry"

module CardInformation
  class Error < StandardError; end
  # Your code goes here...
end
