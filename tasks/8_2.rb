#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true
require_relative "pick_beeper"
require_relative "../karel/robota"

# a task for a move
def task()
  world = Robota::World
  world.read_world("../worlds/pick_beepers")
 karel = PickBeeper.new(1, 6, Robota::NORTH, 0) 
 karel.move
 karel.pick_beeper
 karel.pick_beeper
 karel.pick_beeper
 karel.move 
 karel.move
 karel.pick_beeper
 karel.pick_beeper
 karel.move
 karel.pick_beeper
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