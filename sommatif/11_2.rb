#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "maison"
require_relative "../karel/robota"

# a task for a maison
def task()
  world = Robota::World
  world.read_world("../worlds/maison.kwld")
  
  karel = Maison.new(1, 3, Robota::NORTH, 16) 
  karel.put_5_beeper
  karel.turn_right
  karel.put_4_beeper
  karel.turn_right
  karel.put_4_beeper
  karel.turn_right
  karel.put_3_beeper

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