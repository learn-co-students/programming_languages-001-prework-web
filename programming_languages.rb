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
  languages_already_added = []
  new_hash = {}

  languages.each { |style, value|
    value.each { |language, value2|
      value2.each { |type|
        if languages_already_added.include?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {}
          new_hash[language][:type] = type[1]
          new_hash[language][:style] = []
          new_hash[language][:style] << style
          languages_already_added << language
        end
      }
    }
  }


  new_hash
  
end


