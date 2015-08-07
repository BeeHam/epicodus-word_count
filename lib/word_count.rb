class String
  define_method(:word_count) do |word_to_count|
    if self.split().include?(word_to_count)
      return word_to_count
    end
  end
end
