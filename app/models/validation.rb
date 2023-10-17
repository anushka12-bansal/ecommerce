# class Validation < ActiveModel::Validator
#   def validate(User)
#     # byebug
#     unless User.first_name.start_with? 'X'
#     User.errors.add :first_name, "Provide a name starting with X, please!"
#     end
#   end
# end

# class User < ApplicationRecord
#   validates_with MyValidation
# end

# class Validation < ActiveModel::Validator
#     def validate(record)
#         byebug
#       if record.first_name.blank? || !record.name.start_with?('X')
#         record.errors.add(:first_name, "Please provide a first name starting with X.")
#       end
#     end
#   end
