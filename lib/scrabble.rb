class Scrabble
  @@letter_points = {"A" => 1, "B" => 3, "C" => 3, "E" => 1, "I" => 1,
     "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1,
      "T" => 1, "D" => 2, "G" => 2, "M" => 3, "P" => 3, "F" => 4,
       "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5, "J" => 8,
        "X" => 8, "Q" => 10, "Z" => 10, " " => 0}

  def initialize(word)
    word == nil || word == " "? @word = "" : @word = word
  end

  def score
    counter = 0
    @word.gsub(/\s+/, "").upcase.split("").each { |letter| counter += @@letter_points[letter] }
    counter
  end
end
