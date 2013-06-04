require 'spec_helper'

describe Sc2RanksApi do
  before(:each) do
    @api = Sc2RanksApi.new "sc2ranksapitest.com"
  end

  it 'should have default params of hash' do
    @api.class.default_params.should be_an_instance_of Hash
  end

  it 'should have app key as a default param' do
    @api.class.default_params.should have_key :appKey
  end

  it 'should return a character' do
    character = @api.character "http://us.battle.net/sc2/en/profile/844448/1/wong/"
    character.should be_an_instance_of Sc2RanksApi::Character
  end

  describe 'parsing battle.net url' do
    before(:each) do
      @region, @user = @api.parse_bnet_url "http://us.battle.net/sc2/en/profile/844448/1/wong/"
    end

    it 'should parse the region' do
      @region.should eq 'us'
    end

    it 'should parse the user correctly' do
      @user.should eq 'wong!844448'
    end
  end
end