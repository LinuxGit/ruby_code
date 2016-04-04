class TemperatureError < StandardError
  attr_reader :temperature

  def inititalize(temperature)
    @temperature = temperature
    super("invalid temperautre: #@temperature")
  end
end

raise(TemperatureError.new(180), "Temperature is too high.")
