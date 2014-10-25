linux_distros = %w[Ubuntu CentOS Gentoo]

linux_distros.each do |linux|
  case linux
  when "Debian", "Ubuntu", "Mint"
    puts "#{linux} uses apt-get install software."
  when "CentOS", "RedHat"
    puts "#{linux} uses yum install software."
  else
    puts "#{linux}? I don't know."
  end
end
