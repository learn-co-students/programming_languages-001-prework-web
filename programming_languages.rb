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


def reformat_languages(languages)
alllangs=[]
languages[:oo].keys. each do |lang|
    alllangs << lang
  end
languages[:functional].keys. each do |langu|
    alllangs << langu
  end

newhash = {}



x=0
y=1
while x <= alllangs.length
  while y <= alllangs.length
    if alllangs[y] == alllangs[x]
      alllangs.delete_if do |element|
        element == alllangs[y]
      end
    end 
    y+=1
  end
  x+=1
  y=x+1
end

alllangs.each do |language|
  newhash[language] = {}
end

languages[:oo].each do |language, info|
  newhash.each do |lang, hash|
    if lang == language 
      newhash[lang] = info 
    end
  end
end

languages[:functional].each do |language, info|
  newhash.each do |lang, hash|
    if lang == language 
      newhash[lang] = info 
    end
  end
end

newhash.each do |lang, hash|
  hash[:style] = []
end

newhash.each do |lang, hash|
  languages[:oo].each do |language, info|
    if language == lang 
      hash[:style] << :oo
    end
  end
end

newhash.each do |lang, hash|
  languages[:functional].each do |language, info|
    if language == lang 
      hash[:style] << :functional
    end
  end
end



return newhash 



end


reformat_languages(languages)