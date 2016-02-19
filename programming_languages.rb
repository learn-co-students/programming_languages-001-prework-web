
def reformat_languages(languages)
  # your code here
  languages_reformatted = {}
  languages.each { |style, langs|
    langs.each { |lang, properties|
      if languages_reformatted.has_key?(lang)
        languages_reformatted[lang][:style] << style
      else
        languages_reformatted[lang] = {
          type: properties[:type],
          style: [style]
        }
      end
    }
  }
  languages_reformatted
end
