#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "bowling"
require_relative "../karel/robota"

# a task for bowling
def task()
  world = Robota::World
  world.read_world("../worlds/bowling")
  
  karel = Bowling.new(1, 5, Robota::NORTH, 10)
  karel.move
  karel.put_beeper
  karel.move
  karel.move
  karel.move 
  karel.turn_right
  karel.move
  karel.put_beeper
  karel.move
  karel.move
  karel.put_beeper
  karel.turn_right
  karel.move
  karel.turn_right
  karel.put_beeper3 
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move 
  karel.move
  karel.put_beeper
  karel.move
  karel.move
  karel.put_beeper
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.turn_right
  karel.move_6
  karel.turn_right
  karel.move_4
  karel.turn_right
  karel.move 
  karel.put_beeper
  karel.move
  karel.move
  karel.put_beeper
  karel.move 
  karel.turn_left
  karel.move
  karel.move 
  karel.turn_around
end 


if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end