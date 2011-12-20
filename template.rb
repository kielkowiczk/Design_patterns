class DriveVehicle
	def start_engine
		raise "Trying to use abstract method"
	end

	def stop_engine
		raise "Trying to use abstract method"
	end

	def increase_velocity
		raise "Trying to use abstract method"
	end

	def decrease_velocity
		raise "Trying to use abstract method"
	end

	def drive
		[start_engine, increase_velocity, decrease_velocity, stop_engine].join ' and '
	end
end

class DriveCar < DriveVehicle
	def start_engine
		"starting car engine"
	end

	def stop_engine
		"stoping car engine"
	end

	def increase_velocity
		"increasing car velocity"
	end

	def decrease_velocity
		"decreasing car velocity"
	end
end

class DriveMotorcycle < DriveVehicle
	def start_engine
		"starting motorcycle engine"
	end

	def stop_engine
		"stoping motorcycle engine"
	end

	def increase_velocity
		"increasing motorcycle velocity"
	end

	def decrease_velocity
		"decreasing motorcycle velocity"
	end
end
