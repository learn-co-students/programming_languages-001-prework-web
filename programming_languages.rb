def reformat_languages(languages)
  
  new_hash = {}

  languages.each do |style, info|
    info.each do |language, type|
      new_hash[language] = type
    end
  end
  
  new_hash.collect do |language, new_info|
    new_info[:style] = []
  end

  languages.each do |style, info|
    info.each do |name, type|
      new_hash.each do |language, new_info|
        if language == name
        new_info[:style] << style
        end
      end
    end
  end

  new_hash

end
