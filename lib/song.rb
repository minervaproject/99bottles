class Song
  attr_reader :starting, :ending

  def initialize(starting, ending)
    @starting = starting
    @ending = ending
  end

  def verses
    vessel = Vessel.new("bottle", "beer")
    inventory = Inventory.new(vessel, starting)
    result = []

    while true
      first_line = "#{inventory.to_s.capitalize} on the wall, #{inventory}.\n"

      case inventory.number
      when 0
        command = "Go to the store and buy some more"
        second_line = "#{command}, #{inventory} on the wall.\n"
        inventory.reset
      else
        pronoun = inventory.number == 1 ? "it" : "one"
        command = "Take #{pronoun} down and pass it around"
        inventory.decrement
        second_line = "#{command}, #{inventory} on the wall.\n"
      end

      verse = first_line + second_line

      result << verse

      if inventory.number == starting
        break
      end

    end

    result
  end

end
