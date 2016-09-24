def reformat_languages(languages)
new_hash = {}
languages.each do |style, data|
  data.each do |language, attributes|
    if new_hash.keys.include?(language)
      new_hash[language][:style] << style
    else
      new_hash[language] = attributes
      new_hash[language][:style] = [style]
    end
  end
end
new_hash
end
