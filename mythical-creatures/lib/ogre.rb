class Ogre

  attr_reader :name, :home, :swings

  def initialize(name, home='Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(being_being_encountered)
    being_being_encountered.encounter_counter += 1
    swing_at(being_being_encountered) if being_being_encountered.notices_ogre?
  end

  def swing_at(being_being_swung_at)
    @swings += 1
    being_being_swung_at.knock_out = true if @swings % 2 == 0
  end

  def apologize(being_being_apologized_to)
    being_being_apologized_to.knock_out = false
  end

end


class Human

  attr_reader :name
  attr_accessor :encounter_counter, :knock_out

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @knock_out = false
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def knocked_out?
    if @knock_out
      true
    else
      false
    end
  end

end
