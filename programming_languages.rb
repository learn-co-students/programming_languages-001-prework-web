def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, langs|
    langs.each do |language, type_object|
      if new_hash.has_key?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = {type: type_object[:type], style: [style]}
      end
    end
  end

  new_hash
end
