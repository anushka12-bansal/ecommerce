class UsersController < ApplicationController
 
  # include ActiveModel::Serializer
    skip_before_action :verify_authenticity_token

    def new
      @user=User.new
      end
            
    def create 
			# byebug
     @user = User.new(user_params) 
      if @user.save
    #  redirect_to "/users/#{@user.id}"
		  # render json: UserSerializer.new(@user)
			render json: @user
			UserMailer.newuser(@user).deliver_now
      else
        render json: @user.errors
				# render json: ErrorSerializer.new(@user.errors.to_hash), status: :bad_request
      end
    end

   def index
		# byebug
   @user=User.all
   render json: @user, each_serializer: UserSerializer
   end


def show
  @user=User.find_by(id: params[:id])
	render json: @user, serializer: UserSerializer
  
end


def edit
  @user=User.find(params[:id])
end


        def update
         @user=User.find(params[:id])
         if @user.present?  # .present?=> its check value & its  gives true /false as result
         @user.update(user_params)
            # redirect_to @user
						render json: @user, serializer: UserSerializer
        else
          render :edit, status: :unprocessable_entity
        end
    end


    def delete
        # byebug
      @user=User.find(params[:id])
      if @user.present?
       @user.destroy
       render json: @user
      # redirect_to @user
      else
        render json: " user not found"
      end

     end


private #strong paramter   
        # def user_params
        #     params.permit(:first_name, :last_name, :email, :address, :contact_number, :password, :city, :state, :age, :adhar_number) #.permit=> used for permission
        #   end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :contact_number, :password, :city, :state, :age, :adhar_number) #.permit=> used for permission
      end
  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :address, :contact_number, :password, :city, :state, :age, :adhar_number) #.permit=> used for permission
  #     end

end
