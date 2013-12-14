class PatientsController < ApplicationController
  def create
    Patient.create(name: params[:name])
    render text: "You are successfully registered."
  end

  def show
    render text: "show"
  end
end
