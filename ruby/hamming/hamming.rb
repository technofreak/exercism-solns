module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute(seq1, seq2)
    # compute the hamming distance between seq1 and seq2
    count = 0
    # raise ArgumentError if both are not of equal length
    raise ArgumentError unless seq1.length.equal? seq2.length
    # return 0 for empty string and if both strings are same
    unless (seq1.empty? && seq2.empty?) || (seq1.eql? seq2)
      # now compare and count number of differences char by char
      seq1.each_char.with_index do |chr, ix|
        count+=1 unless chr.eql? seq2[ix]
      end
    end
    return count
  end
end
