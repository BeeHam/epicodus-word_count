# require('pry')

class String
  define_method(:word_count) do |word_to_count|

    string_feedstock = self.downcase().split()
    word_appears = 0
    
    string_feedstock.each() do |element|
      if element.include?(word_to_count)
        word_appears = word_appears.+(1)
      else
        word_appears.+(0)
      end
    end
    word_appears
  end
end
