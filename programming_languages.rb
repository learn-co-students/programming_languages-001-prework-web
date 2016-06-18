def reformat_languages(languages)
  reformatted = {}

  languages.each do |paradigm, languages|
    languages.each do |language, attributes|
      if reformatted[language] == nil
        reformatted[language] = {type: attributes[:type], style: [paradigm]}
      else
        reformatted[language][:style] << paradigm
      end
    end
  end

  reformatted
end
