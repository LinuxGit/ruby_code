def using(conn)
  begin
    yield(conn) if block_given?
  ensure
    conn.close
  end
end
