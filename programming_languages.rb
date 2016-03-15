require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, names|
  	names.each do |name, traits|
  		if new_hash.has_key?(name) == false
  			new_hash[name] = {type: traits[:type], style: [style]}
  		else
  			new_hash[name][:style] << style
  		end
  	end
  end
   new_hash
end