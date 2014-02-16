distribution = "FreeBSD"

message = if distribution == "RedHat"
            "It's Linux that use yum."
          elsif distribution == "Debian"
            "It's Linux that use apt."
          else
            "It isn't Linux."
          end

puts message
