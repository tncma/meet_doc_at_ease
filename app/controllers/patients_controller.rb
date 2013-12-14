class PatientsController < ApplicationController
  def create
    Patient.create(name: params[:name])
    redirect_to show
  end

  def show
  end
end
