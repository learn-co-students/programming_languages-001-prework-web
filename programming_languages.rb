#require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, coding_languages|
    coding_languages.each do |coding_language, info|
      if new_hash.has_key?(coding_language)
          new_hash[coding_language][:style].push(style)
      else
        new_hash[coding_language] = info
        new_hash[coding_language][:style] = [style]
      end
    end
  end
  new_hash
end
