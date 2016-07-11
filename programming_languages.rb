def reformat_languages(languages)
  new_hash = {}

  languages.each do |language_style, language|

    language.each do |language_name, language_attributes|

      if new_hash[language_name]
        new_hash[language_name][:style] << language_style
      else
        new_hash[language_name] = {}
        new_hash[language_name][:type] = language_attributes[:type]
        new_hash[language_name][:style] = [language_style]
      end

    end
  end

  new_hash
end
