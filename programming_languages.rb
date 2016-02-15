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
  languages.each do |type, lang|
  	lang.each do |name, desc|
  		new_hash[name] = desc
  	end
  end
  
  new_hash.collect do |lang,desc|
    desc[:style] = []
  end

  languages.each do |type, lang|
  	lang.each do |name, desc|
      new_hash.each do |lng, dsc|
  	    if lng == name
  	    dsc[:style] << type
        end
      end
  end
end

  new_hash
end

puts reformat_languages(languages)
