def reformat_languages(languages)
  # your code here
  hash = {}

  languages.each do |styles, language|
      language.each do |lang, type|
          if hash.keys.include?(lang)
              hash[lang][:style] << styles
          else
              hash[lang] = {:type => type[:type], :style => [styles]}
          end
      end
  end
  hash
end