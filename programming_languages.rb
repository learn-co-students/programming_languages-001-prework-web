require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |k, v|
    v.each do |k2, v2|
      v2.each do |k3, v3|
        new_hash[k2] ||= {type: v3}
        new_hash[k2][:style] ||= []
        new_hash[k2][:style] << k 
      end
    end
  end
  new_hash
end
