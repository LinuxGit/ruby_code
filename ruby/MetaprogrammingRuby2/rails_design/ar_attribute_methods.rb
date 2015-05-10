require 'active_record'
ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "dbfile"

ActiveRecord::Base.connection.create_table :tasks do |t|
  t.string      :description
  t.boolean     :completed
end

class Tasks < ActiveRecord::Base; end

task = Tasks.new
task.description = "MySQL replication"
task.completed = true
task.save

p task.description
p task.completed?


