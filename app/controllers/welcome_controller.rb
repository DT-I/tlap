class WelcomeController < ApplicationController
  # GET /resources
  # GET /resources.json
  # GET /resources/1
  # GET /resources/1.json
  def show
  end
  
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
