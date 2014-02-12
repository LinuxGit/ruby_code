alias old_backquote `

def `(cmd)
  result = old_backquote(cmd)
  puts "***Command #{cmd} failed: status = #{$?.exitstatus}" if $? != 0
  result
end

print `ls -l /etc/passwd`
print `ls -l /etc/ruby`


