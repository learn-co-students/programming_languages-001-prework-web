=begin

#Hash to be worked on in this problem, before formatting

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

#After formatting

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

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style,language|
    language.each do |lang_name, attribute|
      attribute.each do |type,type_name|
        if !new_hash.key?(lang_name)
          new_hash[lang_name] = {}
        end
        if !new_hash[lang_name].key?(type)
          new_hash[lang_name][type] = type_name
        end
        if !new_hash[lang_name].key?(:style)
          new_hash[lang_name][:style] = []
          new_hash[lang_name][:style] << style 
        else
          new_hash[lang_name][:style] << style
        end
      end
    end
  end
  new_hash
end
