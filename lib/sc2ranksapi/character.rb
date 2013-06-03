require 'sc2ranksapi/team'

class Sc2RanksApi
  class Character
    attr_reader :teams, :portrait, :region, :name, :achievement_points, :updated_at

    def initialize(data)
      @achievement_points = data["achievement_points"]
      @name               = data["name"]
      @region             = data["region"]
      @updated_at         = data["updated_at"]

      add_teams data["teams"]
    end

    def add_teams(teams_data)
      @teams = Hash.new if @teams.nil?

      teams_data.each do |team_data|
        team = Team.new(team_data)
        bracket = team_data["bracket"]
        @teams[bracket] = Array.new if @teams[bracket].nil?
        @teams[bracket] << team
      end
    end
  end
end