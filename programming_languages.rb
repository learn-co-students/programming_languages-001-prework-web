def reformat_languages(languages)
  styled_language = {}
  languages.each do |style, attribute|
    attribute.each do |language, attr|
      if styled_language.has_key?(language) 
	styled_language[language][:style] << style
      else
 	styled_language[language] = attr.merge({:style => [style]})
      end
    end 
  end
  styled_language
end

