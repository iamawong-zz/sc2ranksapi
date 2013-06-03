class Sc2RanksApi
  class Team
    attr_reader :world_rank, :region_rank, :division, :division_rank, :league, :points, :wins, :losses, :favorite_race

    def initialize(data)
      @world_rank    = data["world_rank"]
      @region_rank   = data["region_rank"]
      @division_rank = data["division_rank"]
      @division      = data["division"]
      @league        = data["league"]
      @points        = data["points"]
      @wins          = data["wins"]
      @losses        = data["losses"]
      @favorite_race = data["favorite_race"]
    end

    def ratio
      @wins/(@wins + @losses)
    end
  end
end