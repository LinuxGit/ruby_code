distribution = "FreeBSD"

if distribution == "RedHat"
  message = "It's Linux that use yum."
elsif distribution == "Debian"
  message = "It's Linux that use apt."
else
  message = "It isn't Linux."
end

puts message
