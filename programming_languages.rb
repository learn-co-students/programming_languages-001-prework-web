require "pry"
def reformat_languages(languages)
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

  return_hash = {}

  languages.each do |kind, type_hash|
    type_hash.each do |language, about|
      return_hash[language] = {:type => about[:type], :style => [kind]}
    end
  end
  languages.each do |kind, type_hash|
      type_hash.each do |language, about|
      if return_hash[language][:style][0] != kind
        return_hash[language][:style].push(kind)
      end
     
    end
  end

  
return_hash

end
