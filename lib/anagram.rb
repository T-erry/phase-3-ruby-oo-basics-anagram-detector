require 'pry'
class Anagram
  attr_accessor :word
  def initialize word
      @word = word.chars.sort
  end
  

  def match arr
      newArr = []
      arr.each do |i|
          sorted_char = i.chars.sort
          sorted_char == @word && newArr << i
      end
       newArr
  end
end
