module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna)
    rna = dna.split('')
    dna.each_char.with_index do |chr, ix|
      return '' unless ['T','G','C','A'].include? chr
      rna[ix] = case chr
              when 'T'
                'A'
              when 'G'
                'C'
              when 'C'
                'G'
              when 'A'
                'U'
              end
    end
    return rna.join('')
  end
end
