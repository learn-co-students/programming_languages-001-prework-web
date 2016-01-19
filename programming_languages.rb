require 'pry'


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

languages.each do |style, language_data|
  style_arr = [style]
  language_data.each do |language_name, type_hash|

      if new_hash[language_name] == nil
        new_hash[language_name] = {type: type_hash[:type], style: style_arr}
      else
        new_hash[language_name][:style] += style_arr
      end  
  end
end
new_hash
end




