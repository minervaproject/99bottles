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
    when 1
      command = "Take it down and pass it around"
    else
      command = "Take one down and pass it around"
    end

    case number
    when 0
      next_inventory = Inventory.new(vessel, 99)
      "#{inventory.to_s.capitalize} on the wall, #{inventory}.\n" +
      "#{command}, " +
      "#{next_inventory} on the wall.\n"
    else
      next_inventory = Inventory.new(vessel, number - 1)
      "#{inventory.to_s.capitalize} on the wall, #{inventory}.\n" +
      "#{command}, " +
      "#{next_inventory} on the wall.\n"
    end
  end

end
