class CustomValidation < ActiveModel::Validator
          def validate(record)
            # byebug
            unless record.first_name.start_with? 'X'
            record.errors.add :first_name, "Provide a name starting with X, please!"
            end
          end
        end