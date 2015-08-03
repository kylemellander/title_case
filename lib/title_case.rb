class String
  define_method(:title_case) do
    prepositions = ["the", "and", "or", "of", "to", "from"]
    split_title = self.downcase().split()
    split_title.each_with_index() do |word, index|
      if prepositions.include?(word) && index != 0
        word.downcase!()
      else
        word.capitalize!()
      end
    end
    split_title.join(" ")
  end
end
