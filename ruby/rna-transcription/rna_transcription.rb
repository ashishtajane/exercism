class Complement
  VERSION = 3

  DNA_RNA_MAP = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(str)
    if /^[CGTA]+$/.match(str)
      ret_arr = []
      str.split("").each do |char|
        ret_arr << DNA_RNA_MAP[char]
      end
      ret_arr.join("")
    else
      raise ArgumentError
    end
  end
end
