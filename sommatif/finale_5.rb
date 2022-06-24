#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "rangez_beepers"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/tache.finale")
  
  karel = RangezBeepers.new(1, 1, Robota::NORTH, 12) 

  karel.turn_right
  karel.move
  karel.move 
  karel.move_9
  karel.turn_left
  karel.move 
  karel.turn_left
  karel.move_6
  karel.move
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move_6
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move
  karel.move
  karel.put_beeper
  

end

if __FILE__ == $0
  if $graphical
     screen = window(12, 80) # (size, speed)
     screen.run do
       task
    end
   else
     task
   end
end