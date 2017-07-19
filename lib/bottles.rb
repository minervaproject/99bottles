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
      "#{inventory.to_s.capitalize} on the wall, #{inventory}.\n" +
      "Go to the store and buy some more, " +
      "99 #{vessel.pluralize} on the wall.\n"
    when 1
      "#{inventory.to_s.capitalize} on the wall, #{inventory}.\n" +
      "Take it down and pass it around, " +
      "no more #{vessel.pluralize} on the wall.\n"
    when 2
      "#{inventory.to_s.capitalize} on the wall, #{inventory}.\n" +
      "Take one down and pass it around, " +
      "1 #{vessel} on the wall.\n"
    else
      "#{inventory.to_s.capitalize} on the wall, #{inventory}.\n" +
      "Take one down and pass it around, " +
      "#{number-1} #{vessel.pluralize} on the wall.\n"
    end
  end

end
