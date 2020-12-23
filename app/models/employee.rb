class Employee < ApplicationRecord
  validates_uniqueness_of :email_id
  validates_uniqueness_of :phone_number
end