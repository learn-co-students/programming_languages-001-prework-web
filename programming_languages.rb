require 'pry'
def new_hash
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
def reformat_languages(languages)
  # your code here
  #first iterate languages and try to get  languates
  #second 
  	collection = {}
    function = [];
  	languages.each do |function_key, language| #00 ,functional ... language :ruby{},:javascript{}
      language.each do |language_key, property|
        if collection.has_key?(language_key)
          collection[language_key][:style] << function_key
        else
          collection[language_key] = property
          collection[language_key][:style] =  []
          collection[language_key][:style] << function_key
        end
      end
    end
      # language.each do | language_key, status|	#:ruby ,:javascript ....purpose type{},style{}
				# collection[language_key] = status # overwrite javascript symbol including# [:00]
	  	# 			collection[language_key][:style] = []
	  	# 			collection[language_key][:style] << sta
    #         binding.pry
  		# end
  	collection
end



