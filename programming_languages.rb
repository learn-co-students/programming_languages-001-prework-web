
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

langHash = {}

  languages.each do |styleLang, langs|
    langs.each do |lang, typeHash|
      typeValue = typeHash[:type]
      langData = langHash[lang]
      if langData == nil
        langData = {}
        langData[:type] = typeValue
        langData[:style] = [styleLang]
        langHash[lang] = langData
      else
        langData[:style] << styleLang
        langHash[lang] = langData
      end
    end
  end
  langHash
end

def reformat_languages(languages)
langHash = {}
languages.each do |styleLang, langs|
  langs.each do |lang, typeHash|
    typeValue = typeHash[:type]
    langData = langHash[lang]
    if langData == nil
      langData = {}
      langData[:type] = typeValue
      langData[:style] = [styleLang]
      langHash[lang] = langData
  else 
    langData[:style] << styleLang
    langHash[lang] = langData
  end
end
end
langHash

end
