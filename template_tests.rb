require 'test/unit'
require './template.rb'

class TemplateTests < Test::Unit::TestCase
	def test_drivevehicle_methods_raise_runtime_error 
		assert_raise(RuntimeError) {
			DriveVehicle.new.start_engine
		}	
		assert_raise(RuntimeError) {
			DriveVehicle.new.stop_engine
		}	
		assert_raise(RuntimeError) {
			DriveVehicle.new.increase_velocity
		}	
		assert_raise(RuntimeError) {
			DriveVehicle.new.decrease_velocity
		}	
	end

	def test_drivecar_class
		assert_equal %(starting car engine and increasing car velocity and decreasing car velocity and stoping car engine), DriveCar.new.drive
	end
	
	def test_drivemotorcycle_class
		assert_equal %(starting motorcycle engine and increasing motorcycle velocity and decreasing motorcycle velocity and stoping motorcycle engine), DriveMotorcycle.new.drive
	end
end
