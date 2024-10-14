# frozen_string_literal: true
require 'uri'
require 'net/http'
class PublicController < ApplicationController
  def public
    render json: { message: 'All good. You don\'t need to be authenticated to call this.' }
  end
end