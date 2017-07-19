require_relative "./vessel"
require_relative "./inventory"

class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
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
