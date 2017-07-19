class Song
  attr_reader :starting, :ending

  def initialize(starting, ending)
    @starting = starting
    @ending = ending
  end

  def verses
    current_count = starting
    result = []

    while current_count >= ending
      result << verse(current_count)
      current_count -= 1
    end

    result
  end

  def verse(number)
    vessel = Vessel.new("bottle", "beer")
    inventory = Inventory.new(vessel, number)

    case number
    when 0
      command = "Go to the store and buy some more"
      next_inventory = Inventory.new(vessel, 99)
    else
      pronoun = number == 1 ? "it" : "one"
      command = "Take #{pronoun} down and pass it around"
      next_inventory = Inventory.new(vessel, number - 1)
    end

    "#{inventory.to_s.capitalize} on the wall, " +
      "#{inventory}.\n" +
      "#{command}, " +
      "#{next_inventory} on the wall.\n"
  end
end
