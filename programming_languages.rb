require 'pry'

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
  languages.each do |style, languages|
    languages.each do |language, type|
      if new_hash.key?(language) == false
        new_hash[language] = type
        new_hash[language][:style] = []
      end
    end
  end
  languages.each do |style, languages|
    languages.each_key do |language|
      new_hash[language][:style] << style
    end
  end
  new_hash
end