
#def reformat_languages(languages)
#  new_hash = {}
#  languages.each do |styles, langs|
#    langs.each do |type, val|
#      new_hash[type] ||= val
#      new_hash[type][:style] ||= []
#      new_hash[type][:style] << style
#    end
#  end
#  new_hash
#end

#def reformat_languages(languages)
#  new_hash = {}
#    languages.each do |styles, langs|
#      langs.each do |type, val|
#        if new_hash.key?(type)
#          new_hash[type][:style] << style
#        else
#          new_hash[type] = {:type => val.values[0], :style => [style]}
#        end
#     end
#  end
#new_hash
#end

# I'm really having a hard time with this lab.
# I see there are two possible approaches to solving this lab. Both must account for
# "Javascript" having two styles. I adopted the code from other student labs to study
# while I develop a better understanding of these concepts.
# The top approach uses the "Or Equals" evaluation to
# construct the nested hashes, creating them if they are not already populated.
# The second method uses if/else logic to determine the same thing.
# In a third approach, the below method re-iterates over the hash to populate the
# :style symbol.  I still do not quite understand the need for successive iterations or
# if/else logic here; I know the top method will not pass without the Or Equals evaluation...

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, langs|
    langs.each do |type, val|
      new_hash[type] = val
      new_hash[type][:style] = []
    end
  end
  languages.each do |styles, langs|
    langs.each do |type, val|
      new_hash[type][:style] << styles
    end
  end
  return new_hash
 end
