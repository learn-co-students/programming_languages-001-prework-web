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

languages.each do |type, language|
    language.each do |key, value|
      new_hash[key] = value
      new_hash[key][:style] = []
      new_hash[key][:style] << type
    end
    new_hash[:javascript][:style] << :oo
  end
  new_hash
end
