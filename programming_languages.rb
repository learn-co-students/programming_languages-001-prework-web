def reformat_languages(languages)

  hash = {}
  languages.each do |style, value|
    value.each do |languages, type|
      hash[languages] = type
      hash[languages][:style] = []            
    end
  end
  languages.each do |style, value|
    value.each do |languages, type|
      hash[languages][:style] << style            
    end
  end
  
  #languages.each do |style, value|
  #  value.each do |languages, type|
  #    type.each do |key, value|
  #      binding.pry
  #      if key.to_s == "style"
  #        hash[languages][key] = style
  #        binding.pry
  #      end
  #    end
  #  end
  #end
  hash
end
