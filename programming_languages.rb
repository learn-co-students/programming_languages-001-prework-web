require 'pry'
require 'pry-nav'

def reformat_languages(languages)
  
  reformatted = {}
  languages.each do |style, language|
    language.each do |lang, type|
      if reformatted[lang] == nil
        type[:style] = []
        type[:style] << style
        reformatted[lang] = type
      else
        reformatted[lang][:style] << style
      end
    end
  end
  
  reformatted

end
