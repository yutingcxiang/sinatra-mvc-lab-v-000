class PigLatinizer
  attr_accessor :text
  
  def latinize(text)
    words = text.split(" ")
    words.map do |word|
      if word.match(/\b[aeiouAEIOU]/)
        word + "way"
      else
        until word.match(/\b[aeiouAEIOU]/) 
          word = word[1..-1] + word[0]
        end
        word + "ay"
      end
    words.join("","")
  end
  end
end