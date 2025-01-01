class Api::V1::Role < ApplicationRecord
  VALID_ROLES = %w[admin teacher student staff].freeze

  belongs_to :student, class_name: "API::V1::Student", foreign_key: :user_id, optional: true
  belongs_to :teacher, class_name: "API::V1::Teacher", foreign_key: :user_id, optional: true

  validates :role, presence: true, inclusion: { in: VALID_ROLES, message: "%{value} is not a valid role" }, allow_blank: true
  validates :user_id, uniqueness: true

  before_validation :set_default_role, on: :create

  enum role: {
    admin: "admin",
    teacher: "teacher",
    student: "student",
    staff: "staff"
  }

  private

  def set_default_role
    self.role ||= "student"
  end
end
