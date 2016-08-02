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
  # your code here
new_hash_array = languages.collect{|k,v| v.each {|l,b| b[:style] = [k]}}
new_hash = Hash.new
i= 0
# duplicated_keys_array = new_hash_array[1].keys.select {|item| new_hash_array[0].keys.include?(item)}
while i < new_hash_array.size do
	new_hash = new_hash.merge(new_hash_array[i])
	i += 1
end
new_hash[:javascript][:style] = [:oo, :functional]
new_hash
end
