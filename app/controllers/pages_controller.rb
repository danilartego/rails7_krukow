class PagesController < ApplicationController
  def index
    # render 'pages/index'
    @username = params[:username]
  end
end