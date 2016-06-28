class String
  define_method(:number_to_word) do

    ones = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}

    tens = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 90 => "ninety"}

    irregulars = {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 5 => "fifteen"}

    teen = "teen"

    grouping = {1 => "hundred", 2 => "thousand", 3 => "million", 4 => "billion", 5 => "trillion"}

    chunked_input = self.scan(/\d+/)

    if chunked_input.size < 2

#----------------------

      chunk_array = chunked_input[0].split("")
      word_num = ""
        if chunk_array.size == 3
            word_num = ones[chunk_array[0].to_i] + " hundred"
        end
        if chunk_array.size > 1
          #
        end

        if chunk_array.size > 0
          if chunk_array.size > 2
            word_num = word_num + " " + ones[chunk_array[2].to_i]
          elsif chunk_array.size == 1
            word_num = ones[chunk_array[0].to_i]
          end
        end

        return word_num

#----------------------
    end


  end
end
