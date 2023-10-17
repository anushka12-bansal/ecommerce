class User < ApplicationRecord

    
    validates :first_name, :last_name, :email, :address, :password, :city, :adhar_number, :state, :contact_number, presence: true
    validates :first_name , format: {with: /\A[a-zA-Z]+\z/}
    validates :last_name, format: {with: /\A[a-zA-Z]+\z/}
    # VALID_EMAIL_REGEX= /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
    validates :email,  uniqueness: true
    # format:{with:VALID_EMAIL_REGEX,multiline:true}
    validates :contact_number, uniqueness: true
    validates :contact_number, numericality: {only_integer: true}
    validates :password,  uniqueness: true
    # validate :check_first_name
    # validates :age, comparision: {greater_than_or_equal_to: 18}
    validates :adhar_number, uniqueness: true, numericality: {only_integer: true}

    belongs_to :product 

    # def check_first_name
    #     errors.add(:first_name, "do not use this ") if first_name == "Anushka"
    # end
    # validates_with CustomValidation

    # before_create do|var|
    #     puts "before create callback call"
    #     self.first_name = first_name.upcase_first if first_name.present?  # self? 
    # end


    # after_create do|var|
    #    self.first_name = first_name.captialize if first_name.blank?
    # end

    # around_create do|var|
    #     puts "around create callback call"
    # end


#     after_update do|var|
#         puts "after update callback call"
#     end


#     before_update do|var|
#         puts "before update callback call"
#     end

#     after_initialize do|var|

#         puts "after initalize callback call"
#     end

# after_find do |var|
#     puts "after_find callback method is call "
# end


# after_touch do |var|
#     puts "after touch callback is call"
# end    


# after_destroy do |var|
#     puts "after destroy callback is call"
# end

# before_destroy do|var|
#     puts"before destroy callback is call "
# end

# before_save Conditional

end
