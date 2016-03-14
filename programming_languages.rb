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

#iteration 1
#:oo
#:ruby, :javacscript, :python, :java

#iteration 2
#:functional
#:clojure, :erlang, :scala, :javacsript


def reformat_languages(languages)
	newHash = {}

	languages.each do |style, languageHash|	
		#style = :oo, :functional
		languageHash.each do |language, type|
			newHash[language] = type
			#stop here, add :style in another enumerator			
		end
	end

	#create new hash element for each language
	newHash.collect do |language, info|
		info[:style] = []
	end

	#populate each :style array
	languages.each do |style, languageHash|
		languageHash.each do |name, type|
			newHash.each do |language, info|
				if language == name
					info[:style] << style
				end
			end
		end
	end
	return newHash
end

#puts reformat_languages(languages)
