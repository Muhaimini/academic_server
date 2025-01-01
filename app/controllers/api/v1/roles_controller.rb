class Api::V1::RolesController < ApplicationController
  include ResponseHandler

  before_action :role_params, except: [ :index, :show ]
  set_model_class(Api::V1::Role)

  private

  def role_params
    @model_params = params.permit(:user_id, :role)
  end
end
