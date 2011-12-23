require "test/unit"
require "./command"

class CommandTest < Test::Unit::TestCase
  def test_drive_on_snow
    assert_equal 'using on snow skills', Driving.new(OnSnowSkills.new).drive
  end
  
  def test_driving_on_road
    assert_equal 'using on road skills', Driving.new(OnRoadSkills.new).drive
  end
end