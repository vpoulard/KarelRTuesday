#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true
require_relative "move"
require_relative "../karel/robota"

# a task for a move
def task()
  world = Robota::World
  world.read_world("../worlds/move_mur")
 karel = Move.new(1, 6, Robota::NORTH, 0) 
 
 karel.move 
 karel.move 
 karel.move
 karel.move 
 karel.move
 karel.move 
 karel.move
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