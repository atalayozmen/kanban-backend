# frozen_string_literal: true
require 'uri'
require 'net/http'
class PublicController < ApplicationController
  def public
    render json: { message: 'All good. You don\'t need to be authenticated to call this.' }
  end

  def login
    # Return the access token to the client if credentials are correct

    url = URI("https://#{Rails.configuration.auth0[:domain]}/oauth/token")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/json'
    request.body = "{\"client_id\":\"#{Rails.configuration.auth0[:client_id]}\",
    \"client_secret\":\"#{Rails.configuration.auth0[:client_secret]}\",
    \"audience\":\"#{Rails.configuration.auth0[:audience]}\",
    \"grant_type\":\"client_credentials\"}"

    response = http.request(request)
    render json: response.read_body
  end
end