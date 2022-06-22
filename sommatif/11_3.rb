#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "bouger_beeper"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/random.kwld")
  
  karel = BougerBeeper.new(1, 3, Robota::NORTH, 0) 

 karel.move_9
 karel.turn_right
 karel.move
 karel.turn_right
 karel.move_8
 karel.move 
 karel.turn_right
 karel.turn_right


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