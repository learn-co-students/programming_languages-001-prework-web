languages = {
  :oo => {
    :ruby => {:type => "interpreted"}, :javascript => {:type => "interpreted"}, :python => {:type => "interpreted"}, :java => {:type => "compiled"}},

  :functional => {
    :clojure => {:type => "compiled"}, :erlang => {:type => "compiled"}, :scala => {:type => "compiled"},:javascript => {:type => "interpreted"}}}

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, languages|
    languages.each do |language, info|
      info.each do |type, value|
        if new_hash[language] == nil
          new_hash[language] = {type: value, style: []}
        end
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
