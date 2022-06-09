#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to turn right
class BeeperPanier< UrRobot
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
  # turn around
  def turn_around 
  turn_left
  turn_left  
  end
  # pick 10 beepers
  def pick_10
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    move
  end
  # move 3 blocks
  def move_3
    move
    move
    move
  end
  # put 5 beepers
  def put_beepers_5
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
  end
end