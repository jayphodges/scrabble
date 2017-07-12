gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  attr_reader :game
  def setup
    @game = Scrabble.new
  end

  def test_it_can_score_a_single_letter
    assert_equal 1, game.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_words
    assert_equal 8, game.score("hello")
    assert_equal 33, game.score("mississippi")
  end

  def test_word_formatting
    assert_equal ["T", "E", "S", "T"], game.prepare("test")
    assert_equal ["H", "E", "L", "L", "O"], game.prepare("hELlO")
  end

  def test_return_score
  end

  def test_combine_score
  end


end
