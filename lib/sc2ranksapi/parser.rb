require 'httparty'

class Sc2RanksApi
  include HTTParty

  class Parser < HTTParty::Parser
    SupportedFormats = {"application/json" => :json}
  end
end