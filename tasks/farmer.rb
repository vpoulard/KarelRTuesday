#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to turn right
class Farmer < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # turn right 
  def turn_right
    karel.turn_left
    karel.turn_left
    karel.turn_left

  end

  # turn around
  def turn_around 
   karel.turn_left
   karel.turn_left  
  end

  # pick 4 beepers
  def pick_4
    karel.pick_beeper
    karel.move
    karel.pick_beeper
    karel.move
    karel.pick_beeper
    karel.move
    karel.pick_beeper
  end  

  # pick 3 beepers
  def pick_3 
    karel.pick_beeper
    karel.move
    karel.pick_beeper
    karel.move
    karel.pick_beeper
  end

  # pick 2 beepers
  def pick_2
    karel.pick_beeper
    karel.move
    karel.pick_beeper
  end

  # karel move 3
  def move_3
    karel.move
    karel.move
    karel.move
  end

  # karel move 4
  def move_4 
    karel.move
    karel.move
    karel.move
    karel.move 
  end
end