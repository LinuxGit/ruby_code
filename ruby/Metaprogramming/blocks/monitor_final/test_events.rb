event "The plane is faling" do
  @plane_height < 300
end

event "It's getting closer" do
  @plane_height < @mountain_height
end

setup do
  puts "Setting up plane"
  @plane_height = 100
end

setup do
  puts "Setting up mountain"
  @mountain_height = 200
end
