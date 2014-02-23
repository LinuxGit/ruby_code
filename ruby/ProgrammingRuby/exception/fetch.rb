require 'open-uri'

webpage = open("http://pragprog.com/podcasts")
output = File.open("podcasts", w)


