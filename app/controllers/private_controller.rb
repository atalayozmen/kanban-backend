# frozen_string_literal: true
require 'uri'
require 'net/http'
class PrivateController < ApplicationController
  include Secured
  before_action :authorize

  def private
    render json: { message: 'Hello from a private endpoint! You need to be authenticated to see this.' }
  end

  def private_scoped
    validate_permissions ['read:messages'] do
      render json: { message: 'Hello from a private endpoint! You need to be authenticated and have a scope of read:messages to see this.' }
    end
  end
end