class Api::V1::TeachersController < ApplicationController
  include ResponseHandler

  before_action :teacher_params, except: [ :index, :show ]
  set_model_class(Api::V1::Teacher)

  private

  def teacher_params
    @model_params = params.permit(
      :name,
      :identity_id,
      :is_active,
      :inactive_date
    )
  end
end
