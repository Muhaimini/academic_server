class Api::V1::PeriodesController < ApplicationController
  include ResponseHandler

  before_action :periode_params, except: [ :index, :show ]
  set_model_class(Api::V1::Periode)

  private

  def periode_params
    @model_params = params.permit(:label, :desc)
  end
end
