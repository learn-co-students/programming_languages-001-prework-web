require 'pry'

def reformat_languages(languages)
  formated = {}
  
  languages.each_key do |sty|
    languages[sty].each do |language|
      #binding.pry
      if (!(formated.include?(language[0])))
        #binding.pry
        formated[language[0]] = {
          type: languages[sty][language[0]][:type], 
          style: [sty]
        }
      else
        #binding.pry
        formated[language[0]][:style] << sty 

      end   
    end
  end
  formated
end
