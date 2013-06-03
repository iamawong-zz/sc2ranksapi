require 'httparty'
require 'sc2ranksapi/character'

class Sc2RanksApi
  include HTTParty
  format :json
  base_uri "sc2ranks.com"

  BNET_REGEX = %r{http://([a-zA-Z]+)\.battle\.net/sc2/[a-zA-Z0-9]+/profile/([0-9]+)/[01]/([a-zA-Z0-9]+)/}

  def initialize(appKey)
    self.class.default_params :appKey => appKey
  end

  def character(url)
    region, char = parse_bnet_url url

    json_response = self.class.get("/api/base/teams/#{region}/#{char}.json")

    Character.new json_response.parsed_response
  end

  def parse_bnet_url(url)
    Sc2RanksApi::BNET_REGEX =~ url
    return $1, "#{$3}!#{$2}"
  end

end
