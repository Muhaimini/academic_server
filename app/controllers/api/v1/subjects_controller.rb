class Api::V1::SubjectsController < ApplicationController
  include ResponseHandler

  before_action :subject_params, except: [ :index, :show ]
  set_model_class(Api::V1::Subject)

  private

  def subject_params
    @model_params = params.permit(
      :name,
      :academic_years_id,
      :min_score,
      :desc
    )
  end
end
