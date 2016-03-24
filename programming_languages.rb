def reformat_languages(languages)
  new_hash = {}
  i = 0

  languages.each do |styles, languages_collection|
    styles_array = languages.keys
    
    languages_collection.each do |language, attributes|
      language_values = attributes
      language_values["style".to_sym] = []
      len_styles_array = 0..(styles_array.length-1)

      for i in len_styles_array
        if languages[styles_array[i]].key?(language)
          language_values["style".to_sym] << styles_array[i]
        end
      end

      new_hash[language] = language_values
    end
  end
  new_hash
end