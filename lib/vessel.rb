class Vessel
  attr_reader :vessel_type, :vessel_contents

  def initialize(vessel_type, vessel_contents)
    @vessel_type = vessel_type
    @vessel_contents = vessel_contents
  end

  def to_s
    "#{vessel_type} of #{vessel_contents}"
  end

  def pluralize
    # HACK! Appending 's' is not enough in all cases.
    "#{vessel_type}s of #{vessel_contents}"
  end
end
