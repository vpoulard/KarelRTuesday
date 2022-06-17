#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class whose robots know how to turn right
class RamasseBeeper< UrRobot
  include Turner
  include SensorPack
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def pick_beeper
   if next_to_a_beeper?
    super
   end
  end

  def move_8
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
  end

  def turn_right
    turn_left
    turn_left
    turn_left
  end
end