class Api::V1::AcademicYearsController < ApplicationController
  include ResponseHandler

  before_action :academic_year_params
  set_model_class(Api::V1::AcademicYear)

  private

  def academic_year_params
    @model_params = params.permit(:label, :desc)
  end
end
