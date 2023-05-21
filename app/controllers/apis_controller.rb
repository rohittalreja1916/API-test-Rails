require 'uri'
require 'net/http'

class ApisController < ApplicationController
  before_action :find_api, only: %i[edit show update destroy]

  def index
    @apis = Api.all
  end

  def new
    @api = Api.new
  end

  def create
    @api = Api.create(api_params)

    if @api.save
      flash.now[:notice] = 'Api successfully created.'
      redirect_to @api
    else
      flash.now[:error] = @api.errors.messages.flatten.join(', ')
      debugger
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @api_data = fetch_api
    # render json: fetch_api
  end

  private 

  def fetch_api

    unless @api.has_data
      url = URI(@api.url)

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = Rails.application.credentials.config[:rapid_api]
      request["X-RapidAPI-Host"] = @api.host

      response = http.request(request)

      data = JSON.parse(response.read_body)

      debugger
      save_api_data(data)
    end

    @api.api_datum
  end

  def save_api_data(data)
    data = data.with_indifferent_access

    data[:items].each do |d|
      @api.api_datum.build(
        name: d[:name],
        damageType: d[:damageType]
      ).save
    end
    
    @api.update(has_data: true)
  end

  def api_params
    params.require(:api).permit(:url, :name, :description, :host)
  end

  def find_api
    @api = Api.find(params[:id])
  end
end
