require 'pry'


lang =
{:oo => {
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

#testing for guy on learn
def reformat_languages(languages)
  new_hash = {}
  arraystyles = []
  languages.each do |styles, all_info|

    all_info.each do   |programming_language, info|
      puts info
      new_hash[programming_language] = info
      new_hash[programming_language][:style] = [styles]
    end
  end
  puts new_hash
end
reformat_languages(lang)
# end testing for guy on learn



#def reformat_languages(lang)
#  new_hsh = {}
#  lang.each do | prog_style, value |
#    value.each do | language, type |
#      puts type
#      if !new_hsh.keys.include? (language)
#        new_hsh[language] = { type: value[language][:type], style: [prog_style]}
#      else
#        new_hsh[language][:style] << prog_style
#      end
#    end
#  end
#  puts new_hsh
#  new_hsh
#end