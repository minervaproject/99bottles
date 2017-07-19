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
      how_many = "No more"
      next_how_many = 99
    when 1
      how_many = 1
      next_how_many = "No more"
    else
      how_many = number
      next_how_many = number - 1
    end

    case number
    when 0
      "#{how_many} #{vessel.pluralize} on the wall, " +
      "#{how_many} #{vessel.pluralize}.\n" +
      "Go to the store and buy some more, " +
      "#{next_how_many} #{vessel.pluralize} on the wall.\n"
    when 1
      "#{how_many} #{vessel} on the wall, " +
      "#{how_many} #{vessel}.\n" +
      "Take it down and pass it around, " +
      "#{next_how_many} #{vessel.pluralize} on the wall.\n"
    when 2
      "#{how_many} #{vessel.pluralize} on the wall, " +
      "#{how_many} #{vessel.pluralize}.\n" +
      "Take one down and pass it around, " +
      "#{next_how_many} #{vessel.pluralize} on the wall.\n"
    else
      "#{how_many} #{vessel.pluralize} on the wall, " +
      "#{how_many} #{vessel.pluralize}.\n" +
      "Take one down and pass it around, " +
      "#{next_how_many} #{vessel.pluralize} on the wall.\n"
    end
  end

end
