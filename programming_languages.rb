require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, languages_with_style|
    languages_with_style.each do |language_name, attributes|
      if new_hash[language_name]
        new_hash[language_name][:style] << style
      else
        new_hash[language_name] = { type: attributes[:type] }
        new_hash[language_name][:style] = [style]
      end
    end
  end
  new_hash
end

