def reformat_languages(languages)
  # your code here
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

new_hash = {}
  languages.each do |style, names|
    names.each do |name, data|
      if !new_hash.has_key?(name)
        new_hash[name] = data
        new_hash[name][:style] = []
        new_hash[name][:style].push(style)
      else
        new_hash[name][:style].push(style)
      end
    end
  end
  new_hash
end
