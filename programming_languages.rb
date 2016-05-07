require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = Hash.new

  languages.each { |type, languages_data|

    languages_data.each { |language, language_data|
      if new_hash.keys.include?(language)
        new_hash[language][:style] << type
      else
        language_data[:style] = [type]
        new_hash[language] = language_data
      end
    }
  }
  new_hash
end
