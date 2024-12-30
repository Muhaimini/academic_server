class Api::V1::Teacher < ApplicationRecord
  include GeneratedNumber
  has_generated_number :number, prefix: "TR", digits: 5
end
