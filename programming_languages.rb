def reformat_languages(languages)
  # your code here
  reformated_languages = {}
  languages.each do |style, language|
    language.each do |key, value|
      if reformated_languages.has_key?(key)
        reformated_languages[key][:style] << style
      else
        reformated_languages[key] = value
        value[:style] = [style]
      end
    end
  end
  reformated_languages
end
