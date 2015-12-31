require 'pry'
def reformat_languages(languages)
  # your code here
  results = {}
  languages.each do |key, languages|
    languages.each do |language, properties|
      
      if !results[language]
      	results[language] = properties
      end
      
      if results[language][:style] != nil
      	results[language][:style] << key
      else
        results[language][:style] = [key]
      end
    end
  end
  results
end
