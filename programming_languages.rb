def reformat_languages(languages)
  # your code here
  new_language_hash = {}
  languages.each do |style, lang|
      lang.each do |name, type|
          new_language_hash[name] = {
              :type => type[:type],
              :style => []
          }
      end
  end
  
  languages.each do |style, lang|
      lang.each do |name, type|
          new_language_hash[name][:style] << style
      end
  end
  new_language_hash
end


