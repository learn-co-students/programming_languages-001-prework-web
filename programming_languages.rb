require 'pry'

def reformat_languages(languages)
  # your code here
new_hash = {}
array = []
    languages.each do |k,v|
        v.each do |k2,v2|
            if new_hash.has_key?(k2)
                new_hash[k2][:style] << k
            else
                new_hash[k2] = v2
                new_hash[k2][:style] = [k]
            end
        end
        # puts new_hash.inspect
    end
new_hash
end


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

reformat_languages(languages)