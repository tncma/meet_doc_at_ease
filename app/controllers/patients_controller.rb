class PatientsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    Patient.create(name: params[:name])
    render text: "hello"
  end

  def show
  end

  private
  def permit_params
    params.permit!
  end
end
