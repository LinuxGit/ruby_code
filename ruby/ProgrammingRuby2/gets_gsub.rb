line = gets
if line =~ /Python|Perl/
  puts line.gsub(/Perl|Python/, 'Ruby')
end
