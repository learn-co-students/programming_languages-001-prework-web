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

new_hash = {}
languages.each do |key, value|
  value.each do |lang, v|
    if new_hash[lang].nil?
      new_hash[lang] = {}
    end
    if new_hash[lang][:style].nil?
      new_hash[lang][:style] = []
    end
    new_hash[lang][:style] << key

    v.each do |k2, v2|
      new_hash[lang][k2] = v2
    end
  end
end
new_hash
end
