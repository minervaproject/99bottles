require_relative "./vessel"

class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    vessel = Vessel.new("bottle", "beer")
    
    case number
    when 0
      "No more #{vessel.pluralize} on the wall, " +
      "no more #{vessel.pluralize}.\n" +
      "Go to the store and buy some more, " +
      "99 #{vessel.pluralize} on the wall.\n"
    when 1
      "1 #{vessel} on the wall, " +
      "1 #{vessel}.\n" +
      "Take it down and pass it around, " +
      "no more #{vessel.pluralize} on the wall.\n"
    when 2
      "2 #{vessel.pluralize} on the wall, " +
      "2 #{vessel.pluralize}.\n" +
      "Take one down and pass it around, " +
      "1 #{vessel} on the wall.\n"
    else
      "#{number} #{vessel.pluralize} on the wall, " +
      "#{number} #{vessel.pluralize}.\n" +
      "Take one down and pass it around, " +
      "#{number-1} #{vessel.pluralize} on the wall.\n"
    end
  end

end
