class HomeController < ApplicationController
  def show
    directions = Route.find(params[:id]).directions
    @final_json = {}
    directions.each_with_index do |dis, index|
      @final_json[index] = [dis["lat"], dis["lng"], 1]
    end
   @final_json
  end
end
