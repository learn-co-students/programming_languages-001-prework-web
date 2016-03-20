def reformat_languages(languages)
  new_hash = {}
#  array_styles = []
  
  languages.each do |style, data|
#    array_styles.clear
#    array_styles << style
    data.each do |language, type|
      if !(new_hash.include?(language))
          new_hash[language] = type
          new_hash[language][:style] = [style]
      else
          new_hash[language][:style] << style
      end
    end
  end
  new_hash
end