class Raindrops
  VERSION = 1

  def self.convert num
    ret_arr = []

    q3, m3 = num.divmod(3)
    q5, m5 = num.divmod(5)
    q7, m7 = num.divmod(7)

    ret_arr << "Pling" if m3 == 0
    ret_arr << "Plang" if m5 == 0
    ret_arr << "Plong" if m7 == 0

    if ret_arr.empty?
      num.to_s
    else
      ret_arr.join
    end
  end
end
