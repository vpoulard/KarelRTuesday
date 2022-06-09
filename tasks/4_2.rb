#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "farmer"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("farmer.2")
  
  karel = Farmer.new(1, 6, Robota::NORTH, 0)
  karel.pick_4
  karel.turn_right
  karel.move
  karel.turn_right
  karel.pick_3 
  karel.turn_left
  karel.move
  karel.turn_left
  karel.pick_2
  karel.turn_right
  karel.move
  karel.turn_right
  karel.pick_beeper
  karel.turn_right
  karel.move_3 

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