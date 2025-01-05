module ResponseHandler extend ActiveSupport::Concern
  included do
    class_attribute :target_class
    attr_accessor :model_params
  end

  module ClassMethods
    def set_model_class(model_class)
      self.target_class = model_class
    end
  end

  def index
    data = self.class.target_class.all
    default_response(data)
  end

  def show
    data = self.class.target_class.find_by(id: params[:id])
    default_response(data)
  end

  def create
    data = self.class.target_class.new(@model_params)
    if data.save
      success_response(data, :created)
    else
      error_response(nil, :unprocessable_entity, "Failed to create the record")
    end
  end

  def update
    data = self.class.target_class.find_by(id: params[:id])
    if data
      data.update(@model_params)
      success_response(data)
    else
      error_response(nil, :not_found, "Failed to update the record")
    end
  end

  def destroy
    data = self.class.target_class.find_by(id: params[:id])
    if data
      data.destroy
      render json: { message: "The record successfully deleted" }
    else
      error_response(nil, :not_found, "Failed to delete the record")
    end
  end

  private

  def default_response(data)
    if data.present?
      success_response(data)
    else
      error_response(nil, :not_found)
    end
  end

  def success_response(data = nil, status = :ok)
    render json: data, status: status
  end

  def error_response(errors = nil, status = :unprocessable_entity, message = "Error")
    render json: { messgae: message, errors: errors  }, status: status
  end
end
