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
languages.each {|function, data|
 data.each {|language, moredata|
  new_hash[language] = moredata
   new_hash[language][:style] = [] }}
languages.each {|function, data|
  data.each {|language, moredata|
  new_hash[language][:style] << function  }}
 new_hash
end

reformat_languages(languages)
