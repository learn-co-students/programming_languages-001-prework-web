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
  languages.each do |language_type, examples|
    examples.each do |language, traits|
      traits[:style] = [] 
    end
  end

  languages.each do |language_type, examples|
    examples.each do |language, traits|
      new_hash[language] = traits 
    end
  end

  languages.each do |language_type, examples|
    language_to_add = language_type
    examples.each do |language, traits|
      new_hash[language][:style] << language_to_add
    end
  end

  new_hash
end

reformat_languages(languages)
