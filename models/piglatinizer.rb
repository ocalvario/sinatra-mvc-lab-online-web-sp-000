require 'pry'

class PigLatinizer

<<<<<<< HEAD
  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect {|w| piglatinize(w)}.join(" ")
  end
  
=======
>>>>>>> 4ce4b6e14609ae5e0f42df4ee214147457ac8efa
  def piglatinize(string)
    string = string.split('')
    if string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[2].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      second = string.shift
      third = string.shift
      "#{string.join}#{first}#{second}#{third}ay"
    elsif string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      second = string.shift
      "#{string.join}#{first}#{second}ay"
    elsif string.first.downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      first = string.shift
      "#{string.join}#{first}ay"
    elsif string.first.downcase.match(/[aeoui]/)
      "#{string.join}way"
    else
      string.join
    end
  end
<<<<<<< HEAD
=======

  def to_pig_latin(sentence)
    sentence.split(' ').map do |value|
      self.piglatinize(value)
    end.join(' ')
  end
  
>>>>>>> 4ce4b6e14609ae5e0f42df4ee214147457ac8efa
end