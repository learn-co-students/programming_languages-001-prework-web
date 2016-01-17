require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each {|style,lang_hashes|
    lang_hashes.each{ |name, data|
      if new_hash.has_key?(name)
        new_hash[name][:style] << style
      else
        new_hash[name] = { type: data[:type], style: [style] }
      end
    }
  }
  new_hash
end
