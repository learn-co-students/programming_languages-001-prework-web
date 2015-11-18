require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, info|
    info.each do |language, attribute|
      attribute.each do |type, value|
        if new_hash.has_key?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {type: value, style: [] << style}
        end
      end
    end
  end
  new_hash
end
