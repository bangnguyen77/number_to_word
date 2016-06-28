class Fixnum
  define_method(:number_to_word) do

    words_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

    tens_hash = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 90 => "ninety"}

    num_array = self.to_s.split("").map{|x| x.to_i}

    word = ""

    if num_array.size == 1 && num_array[0] == 1
      word = "one"
    elsif num_array.size == 2
      if num_array[0] == 1 &&
        if num_array[1] == 0
          word = "ten"
        elsif num_array[1] == 4 || num_array[1] > 5
          word = words_hash[num_array[1]] + "teen"
        end
      elsif num_array[0] == 2
        word = tens_hash[num_array[0]]
        if num_array[1] > 0
          word += " " + words_hash[num_array[1]]
        end
      end
    end
    return word
  end
end
