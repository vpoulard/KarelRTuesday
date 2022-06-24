#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to turn right
class RangezBeepers< UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def turn_right
    turn_left
    turn_left
    turn_left
  end

def put_beeper
    if front_is_clear?
      super
    end
    if anyany_beepers_in_beeper_bag?
      super
    end
  end

  def move_9 
    move
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
  end 

  def move_6 
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
  end
 
end