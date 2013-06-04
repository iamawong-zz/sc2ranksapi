require '../spec_helper'

describe Sc2RanksApi::Team do
  before(:each) do
    data  = {
        "world_rank"    => 1,
        "region_rank"   => 2,
        "division"      => "alpha",
        "division_rank" => 3,
        "league"        => 'centauri',
        "points"        => 4,
        "wins"          => 5,
        "losses"        => 6,
        "favorite_race" => 'zerg'
    }
    @team = Sc2RanksApi::Team.new(data)
  end

  it 'should parse data' do
    @team.world_rank.should eq 1
    @team.region_rank.should eq 2
    @team.division.should eq "alpha"
    @team.division_rank.should eq 3
    @team.league.should eq 'centauri'
    @team.points.should eq 4
    @team.wins.should eq 5
    @team.losses.should eq 6
    @team.favorite_race.should eq 'zerg'
  end

  it 'should have correct ratio' do
    @team.ratio.should eq 5/(5+6)
  end
end