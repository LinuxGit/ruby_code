[1] pry(main)> h = {}
=> {}
[2] pry(main)> h[:ruby]
=> nil
[3] pry(main)> h[:ruby] = h.fetch(:ruby, "awesome")
=> "awesome"
[4] pry(main)> h[:ruby]
=> "awesome"
[5] pry(main)> h[:python]
=> nil
[6] pry(main)> h.fetch(:python)
KeyError: key not found: :python
from (pry):6:in `fetch'
[7] pry(main)> h.has_key?(:ruby)
=> true
