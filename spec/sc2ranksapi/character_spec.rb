require '../spec_helper'

describe Sc2RanksApi::Character do
  before :each do
    data = {
        "achievement_points" => 1,
        "name"               => "iamawong",
        "region"             => "eu",
        "updated_at"         => 123456,
        "teams"              => []
    }

    @character = Sc2RanksApi::Character.new(data)
  end

  it 'should have one achievement point' do
    @character.achievement_points.should eq 1
  end

  it 'should have correct name' do
    @character.name.should eq 'iamawong'
  end

  it 'should have european region' do
    @character.region.should eq 'eu'
  end

  it 'should be updated time correct' do
    @character.updated_at.should eq 123456
  end

  it 'should have empty teams' do
    @character.teams.should be_an_instance_of Hash

    @character.teams.should be_empty
  end
end