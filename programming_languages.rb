=begin
require "pry"
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
=end
def reformat_languages(languages)
  new_hash = {}
  languages.each do |category, data1|
    data1.each do |language, data2|
      data2.values.each do |type|
        new_hash[language] = {type: type, style: []} unless new_hash[language]
        new_hash[language][:style] << category if data1[language]
      end
    end
  end
  new_hash
end