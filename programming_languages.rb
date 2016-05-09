require 'pry'
def reformat_languages(language_styles)
  # your code here
  new_hash = {}
  language_styles.each do |style, languages|
    languages.each do |language, type_pair|
      new_hash[language] = {}
      new_hash[language] = type_pair
      new_hash[language][:style] = []
    end
  end
  new_hash.each do |language, attributes|
    attributes.each do |attribute, results|
      
      if results.is_a?(Array)
        language_styles.each do |style, langs|
          langs.each do |lang, info|
            if lang == language
              new_hash[language][:style] << style
            end
          end
        end
      end
    end
  end
  new_hash
end
