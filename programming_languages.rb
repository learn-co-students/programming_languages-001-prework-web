def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, programming_languages|
  	programming_languages.each do |programming_language, types|
  		if new_hash.keys.include?(programming_language) == false
  			new_hash[programming_language] = Hash.new { |h, k| h[k] = [] }
  		end
  		types.each do |type_attr, type|
  			new_hash[programming_language][:type] = type
  			new_hash[programming_language][:style] << style
  		end
  	end
  end
  new_hash
end

def languages 
{
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