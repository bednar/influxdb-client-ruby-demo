require 'influxdb2/client'

class PagesController < ApplicationController
  def show
    @version = InfluxDB2::VERSION
    @client = InfluxDB2::Client.new('https://localhost:9999', 'my-token',
                                    bucket: 'my-bucket',
                                    org: 'my-org')

    render template: "pages/#{params[:page]}"
  end
end