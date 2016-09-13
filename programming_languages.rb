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

def reformat_languages(languages)
	new_hash = {}
		languages.each do |style, style_details|
			style_details.each do |language, language_details|
        style_array = languages.collect do |style, style_details|
          if style_details.include?(language)
            style
          end
        end.delete_if do |value|
          value == nil
        end
				new_hash[language] = {}
				language_details.each do |type, type_details|
					new_hash[language] = {type: type_details, style: style_array}
				end
			end
		end
	new_hash
end

reformat_languages(languages)
