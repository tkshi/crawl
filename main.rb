require 'bundler'
Bundler.require

page = MetaInspector.new('http://ejje.weblio.jp/content/have')
p page.links.all.select! {|link| /http:\/\/ejje.weblio.jp\/content\/[a-z]+/ =~ link}

# p page.links.all.select do |link|
#   if (/http:\/\/ejje.weblio.jp\/content\/.*/ =~ link) == 0 then
#     return true
#   end
# end
