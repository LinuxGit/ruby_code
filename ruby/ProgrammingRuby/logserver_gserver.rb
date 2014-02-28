require 'gserver'
class LogServer < GServer
  def initialize
		super(12345, "0.0.0.0")
  end

  def serve(client)
		client.puts get_end_of_log_file
  end

  def get_end_of_log_file
		File.open("/etc/passwd") do |log|
			log.seek(-500, IO::SEEK_END)
      log.gets
      log.read
		end
  end  
end

server = LogServer.new
server.start.join
