def reformat_languages(languages)
  newHash = {}
  newHash[:ruby] = {:type => "interpreted", :style => [:oo]}
  newHash[:pyhton] = {:type => "interpreted", :style => [:oo]}
  newHash
end
