class String
  define_method(:title_case) do
    prepositions = ["the", "and", "or", "of", "to", "from"]
    split_title = self.downcase().split()
    split_title.each_with_index() do |word, index|
      letters = word.split("")
      if prepositions.include?(word) && index != 0
        word.downcase!()
      elsif letters[0]=="m" && letters[1]=="c"
        i=1
        letters.each do |l|
          if i==1
            l.capitalize!()
          elsif i==3
            l.capitalize!()
          end
          i++
        end
        word = letters.join("")
      else
        word.capitalize!()
      end
    end
    split_title.join(" ")
  end
end
