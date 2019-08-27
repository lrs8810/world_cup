require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'
require 'pry'

class TeamTest < Minitest::Test
  def setup
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @team = Team.new("France")
  end

  def test_it_exits
    assert_instance_of Team, @team
  end

  def test_it_has_attributes
    assert_equal "France", @team.country
  end

  def test_team_starts_not_eliminated
    assert_equal false, @team.eliminated?
  end

  def test_team_starts_with_no_players
    assert_equal [], @team.players
  end

  def test_can_add_player_to_team
    @team.add_player(@mbappe)

    assert_equal [@mbappe], @team.players
  end

  def test_can_multiple_players_to_team
    @team.add_player(@mbappe)
    @team.add_player(@pogba)

    assert_equal [@mbappe, @pogba], @team.players 
  end
end
