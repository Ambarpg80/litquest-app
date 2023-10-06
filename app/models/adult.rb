class Adult < ApplicationRecord
   # after_create  :create_profile
   has_one :profile 
   has_many :children


   private
   # def create_profile
   #    adult = Adult.find(:id)
   #    if adult.exists?
   #       adult.create_profile!(profile_params)
   #       render json: new_profile, status: :created
   #    else
   #       render json: {errors: [child.errors.full_messages]}, status: :unprocessable_entity
   #    end
   # end
    
   # def profile_params
   #    params.permit(:adult_id, :child_id, :username, :email, :password, :password_confirmation )
   # end

end
