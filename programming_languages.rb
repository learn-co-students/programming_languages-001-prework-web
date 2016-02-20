require 'pry'

=begin
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

new_hash =
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

=end

#Iterate over the hash and build a new hash that has the languages as keys
#that point to a value of a hash that describes the type and style.
def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
    value.keys.each do |language|
      binding.pry 
      new_hash[language] = value[language] unless new_hash[language]
      if new_hash[language][:style].nil?
        new_hash[language][:style] = [key]
      else  
        new_hash[language][:style] << key
      end
      #binding.pry 
    end  
  end
  new_hash
end
