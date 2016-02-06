require 'pry'

def lang
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
end


def good_practice

  lang.each do | style, value |
    puts "\nlang.each     STYLE: #{style}   =>   CLASS: #{style.class}\nVALUE: #{value}   =>   CLASS: #{value.class}\n\n"

    value.each do | language, type |
      puts "value.each     LANGUAGE: #{language}   =>   CLASS: #{language.class}\n               TYPE: #{type}   =>   CLASS: #{type.class}\n"
    end
    puts "\n"
  end
  puts "\n"
end
good_practice


#{
#    :ruby => {
#        :type => "interpreted",
#        :style => [:oo]
#    },
#    :javascript => {
#        :type => "interpreted",
#        :style => [:oo, :functional]
#    },

def reformat_languages
  new_hsh = {}
  lang.each do | prog_style, value |
    # prog_style = oo, functional
    # value = {:ruby=>{:type=>"interpreted"},...}
    value.each do | language, type |
      if !new_hsh.keys.include? (language)
        new_hsh[language] = { type: value[language][:type], style: [prog_style]}
        # binding.pry
      else
        new_hsh[language] = { type: value[language][:type], style: [prog_style]}
        #binding.pry
        #style:.values << prog_style }
        #[prog_style[prog_style.size] << prog_style]}
      end
    end
  end
  puts new_hsh
  new_hsh
end
reformat_languages