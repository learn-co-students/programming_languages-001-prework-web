require "pry"

def reformat_languages(languages)
  new_hash = {}
  hashes = {}
  languages.each do |style, data|
    data.each do |name, att|
      att.each do |type, value|
        if new_hash.key?(name)
          new_hash[name][:style] << style
        else
          new_hash[name]= {type => value, style: [style]}
        end
      end
    end
  end
  new_hash
end


