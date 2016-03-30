def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |lang, typehash|
      new_hash[lang] = typehash
      new_hash[lang][:style] = [key]
    end
  end
new_hash[:javascript][:style] << :oo
new_hash

end
