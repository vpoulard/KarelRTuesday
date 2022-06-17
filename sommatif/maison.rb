#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class whose robots know how to turn right
class Maison< UrRobot
  include Turner
  include SensorPack
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

  def put_5_beeper
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
  end

  def turn_right
  	turn_left
  	turn_left
  	turn_left
  end

  def put_4_beeper
  	move
  	put_beeper
  	move
  	put_beeper
  	move
  	put_beeper
  	move
  	put_beeper
  end

  def put_3_beeper
  	move
  	put_beeper
  	move
  	put_beeper
  	move
  	put_beeper
  end

end 