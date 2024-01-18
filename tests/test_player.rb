require 'minitest/autorun'
require './player'

class TestPlayer < Minitest::Test
  def test_switch_team
    player = Player.new
    assert_equal "real madrid" , player.switch_team("real madrid"), "Switch Team Failed"
  end

  def test_switch_position
    player = Player.new
    assert_equal "striker" , player.switch_position("striker"), "Switch Position Failed"
  end

end
