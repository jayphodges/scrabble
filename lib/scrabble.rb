require 'pry'
class Scrabble
  attr_accessor :points_array,
                :points

  def initialize
    @points_array = []
    @points = 0
  end

  def score(word)
    word = prepare(word)
    return_score(word)
    combine_score(points_array)
    points
  end


  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

  def prepare(word)
    if word.class != Array
      word.upcase!
      word = word.chars
    else
      word
    end
  end

  def return_score(word)
    word.each do |letter|
      points_array << point_values[letter].to_i
    end
    return points_array
  end

  def combine_score(points_array)
    points_array.each do |point|
      @points += point
    end
  end

end
