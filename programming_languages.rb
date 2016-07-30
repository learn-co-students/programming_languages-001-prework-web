def languages
    languages = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }
   
    }
  }
languages
end

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, data|
    data.each do |lang, info|
      if new_hash.has_key?(lang)
        new_hash[lang][:style] << style
      else
        new_hash[lang] = info
        new_hash[lang][:style] = [style]
      end
    end      
  end
  new_hash
end

      
    
    

  

  
