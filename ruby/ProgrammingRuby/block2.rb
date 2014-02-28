def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts ":-) You called me with #{param}" }
bo.call "LinuxGit"
