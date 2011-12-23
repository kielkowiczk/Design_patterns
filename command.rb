class Driving
  def initialize(skill = nil)
    @skill = skill
  end
  
  def drive(&block)
    return @skill.use unless @skill.nil?
    return block.call unless block.nil?
   'not using any skills'
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