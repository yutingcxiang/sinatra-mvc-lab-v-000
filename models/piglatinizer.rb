class PigLatinizer
  attr_accessor :text
  
  def latinize(text)
    words = text.split(" ")
    w = words[0].to_s
    if w.match(/\b[aeiouAEIOU]/)
      words + "way"
    else
      "nay"
    end
    # words.collect do |word|
    #   if word[0].match(/\b[aeiouAEIOU]/)
    #     word + "way"
    #   else
    #     word = word[1..-1] + word[0]
    #     if word[0].match(/\b[aeiouAEIOU]/) 
    #       word + "ay"
    #     else 
    #       word = word[1..-1] + word[0] + "ay"
    #     end
    #   end
    # end
    # words.join(" ")
  end
end