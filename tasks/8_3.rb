#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true
require_relative "ramasse_beeper"
require_relative "../karel/robota"

# a task for a move
def task()
  world = Robota::World
  world.read_world("../worlds/aleatoir.kwld")
 karel = RamasseBeeper.new(2, 2, Robota::EAST, 0) 

 karel.move_8
 karel.turn_left 
 karel.move 
 karel.turn_left
 karel.move_8
 karel.turn_right
 karel.move
 karel.turn_right
 karel.move_8
 karel.turn_left 
 karel.move 
 karel.turn_left
 karel.move_8
 karel.turn_right
 karel.move
 karel.turn_right
 karel.move_8
 karel.turn_left 
 karel.move 
 karel.turn_left
 karel.move_8
 karel.turn_right
 karel.move
 karel.turn_right
 karel.move_8
 karel.turn_left 
 karel.move 
 karel.turn_left
 karel.move_8
 karel.turn_right
 karel.move
 karel.turn_right
 karel.move_8
 karel.turn_left 
 karel.move 
 karel.turn_left
 karel.move_8
 karel.turn_right
 karel.move
 karel.turn_right
end

if __FILE__ == $0
  if $graphical
     screen = window(20, 50) # (size, speed)
     screen.run do
       task
    end
   else
     task
   end
end