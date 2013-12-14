class PatientsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    patient = Patient.create!(name: params[:name])
    redirect_to patients_path(patient)
  end

  def show
    p "#" * 100
    p params
    Patient.create!(name: params[:name])
  end

  private
  def permit_params
    params.permit!
  end
end
