module BookKeeping
  VERSION = 6
end

class Gigasecond
  def self.from(start_time)
    # in ruby, 10e8 gives 1,000,000,000
    return start_time + 10e8
  end
end
