require 'net/http'
require 'uri'
require 'json'

class Api::V1::Processing::EChargingStationsController < ApplicationController
  before_action :fetch_and_clean

  def index
    render(json: @response, status: 200)
  end

  private

  def fetch_and_clean
    uri = URI.parse('https://mobility.api.opendatahub.com/v2/flat/EChargingPlug/*?where=scoordinate.dlt.(100000,11.186685823901346,46.677257127835006)')
    response = Net::HTTP.get_response(uri).body
    data = JSON.parse(response)["data"]
  
    @response = data.map do |station|
      {
        scoordinate: station["scoordinate"],
        maxPower: station.dig("smetadata", "outlets", 0, "maxPower"),
        hasFixedCable: station.dig("smetadata", "outlets", 0, "hasFixedCable"),
        outletTypeCode: station.dig("smetadata", "outlets", 0, "outletTypeCode"),
        porigin: station["porigin"],
        sname: station["sname"],
      }
    end
  end  
end
