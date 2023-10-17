class Conditional < ApplicationRecord
    before_save :age, :if  age.present?

end
