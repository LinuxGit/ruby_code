require 'gserver'

class TimeServer < GServer
  def initialize(port=10001, *args)
    super(port, *args)
  end

  def serve(io)
    io.puts(Time.now.to_s)
  end
end

t = TimeServer.new(12345)
t.audit = true
t.start.join
