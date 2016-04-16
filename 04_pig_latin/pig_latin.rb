def translate(input_string)
  word_array = input_string.downcase.split(" ")
  vowels = "aeiou"
  
  word_array.map! {|word|
    #The easy part: words starting with vowels
    if vowels.index(word[0]).nil? == false
      word.insert(-1,"ay")
      #Translates words starting with "qu"
    elsif word[0..1] == "qu"
      word.insert(-1,"quay")
      word.sub(word[0..1],"")
      #Deals with silly words like "square and squire"
    elsif vowels.index(word[0]).nil? && word[1..2] == "qu"
      word.insert(-1, word[0..2] + "ay")
      word.sub(word[0..2], "")
      #Translates words starting with 1 consonant
    elsif vowels.index(word[0]).nil? && (vowels.index(word[1]).nil? == false)
      word.insert(-1,word[0] + "ay")
      word.sub(word[0],"")
      #translates words starting with two consonants
    elsif vowels.index(word[0..1]).nil? && (vowels.index(word[2]).nil? == false)
      word.insert(-1,word[0..1] + "ay")
      word.sub(word[0..1],"")
      #translates words starting with 3 consonants
    elsif vowels.index(word[0..2]).nil?
      word.insert(-1,word[0..2] + "ay")
      word.sub(word[0..2],"")
    else 
      "You have a strang word indeed."
    end
    }
  
  word_array.join(" ")
end