def reformat_languages(languages)
  # your code here
  formatted = {}
  languages.each do |type, langs|
    langs.each do |lang, data|
      formatted[lang] = data if (!(formatted.has_key?(lang)))
      if(formatted[lang].keys.size < 2)
        formatted[lang][:style] = [type]
      else
        formatted[lang][:style] << type
      end
    end
  end
  formatted
end
