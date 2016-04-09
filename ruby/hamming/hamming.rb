class Hamming
  VERSION = 1

  def self.compute(a, b)
    raise ArgumentError if a.size != b.size
    diff_count = 0
    l = a.size
    (0...l).each do |i|
      diff_count += 1 unless a[i] == b[i]
    end
    diff_count
  end
end
