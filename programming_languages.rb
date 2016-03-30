def reformat_languages(languages)
new_hash = {}
  languages.each do |style, languages_hash|
    languages_hash.each do |language_name, details|
      if new_hash.has_key?(language_name)
         new_hash[language_name][:style] << style
      else
         new_hash[language_name] = details
         new_hash[language_name][:style] = [style]
      end
    end
  end
  new_hash
end