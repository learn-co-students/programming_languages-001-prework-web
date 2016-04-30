

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language|
    language.each do |language, type|
      new_hash[:"#{language}"] = type
      new_hash[:"#{language}"][:style] = []
    end
  end
  

  languages.each do |style, language|
    language.each do |language, type|
      new_hash[:"#{language}"][:style] << style
    end
  end  
  
  return new_hash
end

