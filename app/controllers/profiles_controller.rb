class ProfilesController < ApplicationController
    
        def index 
            profiles = Profile.all
            render json: profiles, status: :ok
        end
    
        def show
            profile = Profile.find(params[:id])
            render json: profile, status: :ok
        end
    
        # def create
        #     child = Child.find(:id)
        #     adult = Adult.find(:id)
        #     if child
        #         child.create_profile!(profile_params)
        #         render json: new_profile, status: :created
        #     elsif adult
        #         adult.create_profile!(profile_params)
        #         render json: new_profile, status: :created
        #     else
        #         render json: {error: "Profile can't be created"}, status: :unprocessable_entity
        #     end
        #   end
        # end
    
        def update             
            profile = Profile.find(params[:id])
            profile.update(profile_params)
            render json: profile, status: :accepted
        end
    
        def destroy
            profile = Profile.find_by(id: params[:id])
            profile.destroy
            head :no_content
        end
    
    
        private
    
        def profile_params
            params.permit(:adult_id, :child_id, :username, :email, :password, :password_confirmation )
        end


end
