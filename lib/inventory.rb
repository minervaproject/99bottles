class Inventory
  attr_reader :vessel, :initial_number, :number

  def initialize(vessel, initial_number)
    @vessel = vessel
    @initial_number = initial_number
    @number = initial_number
  end

  def to_s
    case number
    when 0
      "no more #{vessel.pluralize}"
    when 1
      "1 #{vessel}"
    else
      "#{number} #{vessel.pluralize}"
    end
  end

  def decrement
    @number -= 1
  end

  def reset
    @number = initial_number
  end

end
