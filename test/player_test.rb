require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new({name: "Luka Modric", position: "midfielder"})  
  end

  def test_it_exits
    assert_instance_of Player, @player
  end

  def test_it_has_attributes
    assert_equal "Luka Modric", @player.name
    assert_equal "midfielder", @player.position
  end
end
