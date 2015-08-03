class String
  define_method(:shizzle) do
    words = self.split(" ")
    words.each_with_index() do |word, word_index|
      letters = word.split("")
      letters.each_with_index() do |l, index|
        if index!=0
          if l=="s"
            l="z"
            letters[index]=l
          elsif l=="S"
            l="Z"
            letters[index]=l
          end
        end
      end
      word = letters.join("")
      words[word_index]=word
    end
    words.join(" ")
  end
end
