class PatientsController < ApplicationController
  def create
    Patient.create(name: params[:name])
  end

  def show
    render text: "show"
  end
end
