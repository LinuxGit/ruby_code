require 'csv'
require 'set'

class AnnualWeather
  attr_reader :readings

  Reading = Struct.new(:date, :high, :low) do
    def eql?(other)
      date.eql?(other.date)
    end

    def hash
      date.hash
    end
  end

  def initialize(filename)
    @readings = Set.new

    CSV.foreach(filename, headers: true) do |row|
      @readings << Reading.new(Date.parse(row[0]),
                                          row[1].to_f,
                                          row[2].to_f)
    end
  end
end

aw = AnnualWeather.new('weather_data.csv')
p aw.readings
