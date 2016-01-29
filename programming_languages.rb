def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |oo_functional, language|
    language.each do |language_key, type|
      type.each do |type_key, value|
        new_hash[language_key] = type
        # puts "type is #{language_key}"
      end
    end
  end
  new_hash.each do |language, type|
    type[:style] = []
  end
  languages.each do |oo_functional, language|
    new_hash.each do |language_new_hash, type|
      # puts "new_hash language #{languages[oo_functional]}"
      if languages[oo_functional].include?(language_new_hash)
        type[:style] << oo_functional
        # puts "type here is #{type[:style]}"
      end
    end
  end
  # puts "new_hash is #{new_hash}"
  return new_hash
end




{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}

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