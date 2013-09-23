class HomeController < ApplicationController
  layout :application

  def index
    backbone_responder do
      render json: incidents.values
    end
  end

  def show
    backbone_responder do
      render json: incidents[params[:id].to_i]
    end
  end

  def incidents
    [
      { type: 'warning', title: 'maintenance', description: 'upgraded some server'},
      { type: 'error', title: 'something went wrong', description: 'blabla'},
      { type: 'error', title: 'something else went wrong', description: 'humptydumpty'}
    ].each_with_index.each_with_object({}) do |(incident, index), incidents|
      incidents[index] = incident.merge id: index
    end
  end
end
