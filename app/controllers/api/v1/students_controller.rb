class Api::V1::StudentsController < ApplicationController
  include ResponseHandler

  before_action :student_params, except: [ :index, :show ]
  set_model_class(Api::V1::Student)

  private

  def student_params
    @model_params = params.permit(
      :name,
      :identity_id,
      :periodes_id,
      :semesters_id,
      :is_active,
      :inactive_date
    )
  end
end
