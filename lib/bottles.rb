require_relative "./vessel"
require_relative "./inventory"
require_relative "./song"

class Bottles

  def song
    Song.new(99, 0).verses.join("\n")
  end

  def verses(starting, ending)
    Song.new(starting, ending).verses.join("\n")
  end

  def verse(number)
    Song.new(number, number).verses.first
  end

end
