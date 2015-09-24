

def reformat_languages(languages_by_style)
  sorted_languages = {}

  languages_by_style.each do |style, languages_by_type|
    languages_by_type.each do |language, info|
      sorted_languages[language] ||= {}
      sorted_languages[language][:type] = info[:type]
      sorted_languages[language][:style] ||= []
      sorted_languages[language][:style].push(style)
    end
  end
    sorted_languages
end
