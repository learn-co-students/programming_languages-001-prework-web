require 'pry'

def reformat_languages(languages)
	my_hash = Hash.new
	languages.each do |style, data|
		#style = type.to_s
		data.each do |language| 

			if !my_hash.include?(language[0])
				my_hash[language[0]] = Hash.new
				my_hash[language[0]][:type] = language[1][:type]
				my_hash[language[0]][:style] = []
				my_hash[language[0]][:style].push(style.to_sym)
			else
				my_hash[language[0]][:style].push(style.to_sym)
			end
		end
	end
	return my_hash
end


langs = {
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

#reformat_languages(langs)