module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(number)
    res = ''
    res += 'Pling' if (number % 3 == 0)
    res += 'Plang' if (number % 5 == 0)
    res += 'Plong' if (number % 7 == 0)
    return number.to_s if res.empty?
    res
  end
end
