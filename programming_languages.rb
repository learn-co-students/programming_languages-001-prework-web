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

  languages.each do |kind, names|
    names.each do |language, data|
      if !return_hash.has_key?(language)
        return_hash[language] = data
        return_hash[language][:style] = [kind]
      else
        return_hash[language][:style] << kind
      end
    end
  end
  return_hash
end
