class Inventory
  attr_reader :vessel, :number

  def initialize(vessel, number)
    @vessel = vessel
    @number = number
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

end
