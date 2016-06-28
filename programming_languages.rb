def reformat_languages(languages)
  # your code here
	new_hash = {}
	languages.each do |style, langs|
		langs.each do |lang, info|
			if not info[:style].class == Array
				info[:style] = []
			end
			info[:style] << style

			if not new_hash.keys.include?(lang)
				new_hash[lang] = info
			else
				new_hash[lang][:style] << style
			end

		end
	end
	new_hash
end
