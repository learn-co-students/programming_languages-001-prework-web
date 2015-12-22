require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  new_hash.default = 0
  inner_hash = {}
  inner_hash.default = 0
  languages.each {|style, names|
    names.each {|name, type_data|
      type_data.each {|type_name, type|
        inner_hash = {}
        inner_hash[type_name] = type
        if new_hash.keys.include?(name)
          new_hash[name][:style] << style
        else
          inner_hash[:style] = [style]
          new_hash[name] = inner_hash
        end
        }
      }
    }
  new_hash
end