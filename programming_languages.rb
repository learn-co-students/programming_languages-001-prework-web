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
  languages.each do |style, name|
    name.each do |lang, attrib|
      attrib.each do |type, value|
        if new_hash.has_key?(lang)
          new_hash[lang][:style] << style
        else 
          new_hash[lang] = {type: value, style: [] << style}
        end
      end
    end
  end
  new_hash
end

reformat_languages(languages)
