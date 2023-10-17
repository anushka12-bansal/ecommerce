class UserMailer < ApplicationMailer
    def newuser(name)
        byebug
        @name= name
        mail(to: @user.email, subject: "welcome to rails ")


    end
end
