require "test/unit"
require "./command"

class CommandTest < Test::Unit::TestCase
  def test_drive_on_snow
    assert_equal 'using on snow skills', Driving.new(OnSnowSkills.new).drive
  end
  
  def test_driving_on_road
    assert_equal 'using on road skills', Driving.new(OnRoadSkills.new).drive
  end
  
  def test_driving_wiht_block
    assert_equal 'using on road skills', Driving.new.drive { 'using on road skills' }
    assert_equal 'using on snow skills', Driving.new.drive { 'using on snow skills' }
  end
end