class PigLatinizer
  attr_accessor :text
  
  def latinize(text)
    words = text.split(" ")
    words.collect do |word|
      if word[0][0].match(/[aeiouAEIOU]/)
        word + "way"
      else
        word = word[0][1..-1] + word[0][0]
        if word[0][0].match(/[aeiouAEIOU]/) 
          word + "ay"
        else 
          word = word[0][1..-1] + word[0][0] + "ay"
        end
      end
    end
    words.join(" ")
  end
end