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
  temp_language_name = nil
  temp_style = nil
  current_languages_in_hash = []

  languages.each do |style_of_language, language_name|
    temp_style = style_of_language #!!! use to compare oo vs functional!!!


		language_name.each do |language, type_hash|
		temp_language = language #!!! use to compare language name !!!

			type_hash.each do |type_sym, string_int_vs_comp|

				temp_string_int_vs_comp = string_int_vs_comp #gives us "interperted"

        if current_languages_in_hash.any? {|lang| lang == temp_language}
          new_hash[language][:style].push(temp_style)

        else
					new_hash[temp_language] = {
						type: temp_string_int_vs_comp,
					 style: [temp_style]
					}

        end

        current_languages_in_hash.push(temp_language)

			end
		end
	end
  return new_hash
end
