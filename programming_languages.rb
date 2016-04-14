require 'pry' # binding.pry
def reformat_languages(languages)

  hash = {}
  languages.each do |style, type|
    type.each do |name, description|
      if name == :javascript
        description[:style] = [:oo, style]
      else
        description[:style] = [style]
      end

    hash[name]= description
    end
  end
  hash
end