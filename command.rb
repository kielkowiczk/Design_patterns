class Driving
  def initialize(skill)
    @skill = skill
  end
  
  def drive
    @skill.use
  end
end

class OnSnowSkills
  def use
    'using on snow skills'
  end
end

class OnRoadSkills
  def use
    'using on road skills'
  end
end