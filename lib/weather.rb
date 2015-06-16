module Forecast
  FORECAST = ["stormy", "sunny"]

  def self.now
    FORECAST.sample
  end
end