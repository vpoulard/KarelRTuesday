#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class whose robots know how to turn right
class Move< UrRobot
  include Turner
  include SensorPack
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  def move 
    if front_is_clear?
      super
    end 
  end
end