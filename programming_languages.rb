#=begin
languages_hash = {
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
#=end

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style,language_hash|
    language_hash.each do |language,type_hash|
      new_hash[language] = {} unless new_hash.include?(language)
      if new_hash[language].include?(:style)
        new_hash[language][:style] << style
      else
        new_hash[language][:style] = []
        new_hash[language][:style] << style
      end
      type_hash.each do |type,com_or_int|
        new_hash[language][:type] = com_or_int
      end
    end
  end

  new_hash

end

p reformat_languages(languages_hash)
