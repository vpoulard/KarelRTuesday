#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "fix_beepers"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/fix_beepers")
  
  karel = FixBeepers.new(4, 3, Robota::EAST, 0) 
  karel.turn_right
  karel.move_3
  karel.turn_left
  karel.move
  karel.move
  karel.turn_left
  karel.move
  karel.pick_5
  karel.turn_left
  karel.move_3
  karel.turn_left
  karel.move 
  karel.move
  karel.move
  karel.turn_left
  karel.put_beepers_5
  karel.turn_right
  karel.move 
  karel.move
  karel.turn_right
  karel.move_3
  karel.turn_right 
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