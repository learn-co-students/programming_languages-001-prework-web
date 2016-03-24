def reformat_languages(languages)
  # your code here
  hash = Hash.new
  languages.each {|style, h_lang|
    h_lang.each {|lang, h_type|
      if hash.has_key?(lang)
        hash[lang][:style].push(style)
      else
        hash[lang] = {:type => h_type[:type] , :style => [style]}
      end
      }
    }
  hash
end
