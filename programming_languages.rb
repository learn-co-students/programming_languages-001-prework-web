require 'pry'
languages_by_style = {
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
  # your code here
 languages_by_name = {}
 languages.each{|style, language|
   language.each{|name, type|
     if languages_by_name[name] == nil
     	languages_by_name[name] = {}
     	languages_by_name[name][:type] = type[:type]
     	languages_by_name[name][:style] = [style]
     else
     	languages_by_name[name][:style] << style
     end    	
   }
 }
 languages_by_name
end
reformat_languages(languages_by_style)










