#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to turn right
class Bowling < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end
  
  # turn right 
  def turn_right
    turn_left
    turn_left
    turn_left


    end
  # put 3 beepers
  def put_beeper3
  move
  move 
  put_beeper
  move 
  move 
  put_beeper
  move
  end 
  # move 6 steps
  def move_6
  move 
  move   
  move
  move 
  move
  move
  end
  # move 4 steps
  def move_4
  move 
  move
  move
  kael.move 
  end
  # turn around
  def turn_around 
  turn_left
  turn_left
    
  end
  # pick 4 beepers
  def pick_4
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move
    pick_beeper
    move 
  end
end