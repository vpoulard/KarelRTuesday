#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class whose robots know how to turn right
class BougerBeeper< UrRobot
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

  def put_beeper
    if front_is_clear?
      super
    end
  end

  def move_8
    put_beeper
    move
    put_beeper
    move 
    put_beeper
    move
    move
    put_beeper
    put_beeper
    move
    move
    move
    put_beeper
    move
    put_beeper
    put_beeper
    put_beeper
  end


  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def move_9
    move 
    pick_beeper
    pick_beeper
    pick_beeper
    move
    pick_beeper
    pick_beeper
    pick_beeper
    move
    pick_beeper
    pick_beeper
    pick_beeper
    move 
    pick_beeper
    pick_beeper
    pick_beeper
    move
    pick_beeper
    pick_beeper
    pick_beeper
    move
    pick_beeper
    pick_beeper
    pick_beeper
    move 
    pick_beeper
    pick_beeper
    pick_beeper
    move
    pick_beeper
    pick_beeper
    pick_beeper
    move
    pick_beeper
    pick_beeper
    pick_beeper
  end

end