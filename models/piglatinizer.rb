class PigLatinizer
  attr_accessor :text
  
  def latinize(text)
    words = text.split(" ")
    words.map do |word|
      if word[0].match(/[aeiouAEIOU]/)
        word + "way"
      else
        unless word[0].match(/[aeiouAEIOU]/) 
          word = word[1..-1] + word[0]
        end
        word + "ay"
      end
    words.join("","")
  end
  end
end