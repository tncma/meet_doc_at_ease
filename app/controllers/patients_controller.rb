class PatientsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    patient = Patient.create!(name: params[:name])
    redirect_to patients_path(patient)
  end

  def show
    message = params["txtweb-message"] || ""
    message_split = message.split(" ")
    from = message_split[1]
    to = message_split[3]
    routes = RestClient.get("http://maps.googleapis.com/maps/api/directions/json?origin=Alwarpet&destination=Triplicane&sensor=false")
    @route_instructions = JSON.parse(routes)["routes"].first["legs"].first["steps"].collect{ |r| r["html_instructions"]}.join(",")
  end

  private
  def permit_params
    params.permit!
  end
end
