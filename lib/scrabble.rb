class String
  define_method(:scrabble) do
    new_array = Array.new()
    scrabble_values = { "a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1,
      "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3, "p" => 3, "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4,
      "k" => 5, "j" => 8, "x" => 8, "q" => 10, "z" => 10 }
    word = self.downcase().delete(" ").split("")
    word.each() do |letter|
      scrabble = scrabble_values.fetch(letter)
      new_array.push(scrabble)
    end
    if word.length() >= 7
      new_array.push(50)
    else
      new_array
    end
    sum = new_array.reduce(:+) #new code i entered to better sum
  end
end
