NETAWORKS = ["192.168.1", "192.168.2"].map!(&:freeze).freeze

module Defaults
  TIMEOUT = 5
end

Defaults.freeze
