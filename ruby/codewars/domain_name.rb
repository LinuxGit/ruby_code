def domain_name(url)
  url.gsub(/.*:\/\//, '').gsub(/w{3}\./, '').gsub(/\.com.*/, '')
end

#Best Practices
def domain_name(url)
  regex = /(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end
