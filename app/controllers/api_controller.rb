class ApiController < ApplicationController
  def create
    render nothing: true, status: :created
  end
end
