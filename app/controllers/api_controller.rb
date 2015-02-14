class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    views = JSON.parse params[:data], symbolize_names: true
    views = views.map do |view|
      view[:start_at] = Time.at(view.delete(:start_ts) / 1000).to_datetime
      view[:duration] = view[:duration] / 1000
      view
    end
    views.each do |view|
      View.create view
    end
    render nothing: true, status: :created
  end
end
