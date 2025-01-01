class Api::V1::TeacherSubjectsController < ApplicationController
  include ResponseHandler

  before_action :subject_teachers_params, except: [ :index, :show ]
  set_model_class(Api::V1::TeacherSubject)

  private

  def subject_teachers_params
    @model_params = params.permit(
      :teachers_id,
      :subjects_id
    )
  end
end
