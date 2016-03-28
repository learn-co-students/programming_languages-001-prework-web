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

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language|
    
    language.each do |language_name, details|
      style_array = []
      style_array << style
      
      #if a language is either functional or oo
      if new_hash.has_key?(language_name) == false
        new_hash[language_name] = {:type => details[:type], :style => style_array}
      
      #if a language is both functional and oo  
      else
        temp_array = []
        
        #temp_array must include both styles for this language
        temp_array << new_hash[language_name][:style]
        temp_array << style

        new_hash[language_name] = {:type => details[:type], :style => temp_array.flatten}
      end
      
    end

  end

  return new_hash

end

