class Fixnum
  define_method(:number_to_word) do

    num_array = self.to_s.split("").map{|x| x.to_i}

    if num_array.size == 1 && num_array[0] == 1
      return "one"
    elsif num_array.size == 2 && num_array[0] == 1 && num_array[1] == 0
      return "ten"

    end
  end
end
