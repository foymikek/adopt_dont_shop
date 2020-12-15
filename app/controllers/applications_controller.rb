class ApplicationsController < ApplicationController
  def show
    @application = Application.find(params[:id])
  end

  def new
  end

  def create
    application = Application.new(application_name: params[:application_name], street_address: params[:street_address], city: params[:city], state: params[:state], zip: params[:zip])
    if application.save
      redirect_to "/applications/#{application.id}"
    else
      flash[:error] =  "You must fill in the fields."
      redirect_to "/applications/new"
    end
  end
end
