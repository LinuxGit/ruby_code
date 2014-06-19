def remove_url_anchor(url)
  url.to_s.split('#')[0]
end

#Best Practices
def remove_url_anchor(url)
  url.split('#').shift
end
