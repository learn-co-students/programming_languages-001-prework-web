def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_data|
    language_data.each do |language, attribute|
      style_array = []
      style_array << style
      if new_hash.include?(language)
        new_hash[language][:style] << style
      else
        new_hash[language] = {:type => attribute[:type], :style => style_array}
      end
    end
  end
  new_hash
end
