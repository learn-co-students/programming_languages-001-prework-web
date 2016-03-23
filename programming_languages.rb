require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, names|
    names.each do |names, types|
      new_hash[names] = {:type => languages[styles][names][:type], :style => []}
    end
  end
  languages.each do |styles, names|
    names.each do |names, types|
      new_hash[names][:style] << styles
    end
  end
  new_hash
end

reformat_languages({
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
})