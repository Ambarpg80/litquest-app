class AdultsController < ApplicationController
    def index 
        adults = Adult.all
        render json: adults, status: :ok
    end

    def show
        adult = Adult.find(params[:id])
        render json: adult,  status: :ok
    end

    def create 
        new_adult = Adult.create(adult_params) 
        # new_adult.create_profile(profile_params)
        render json: new_adult, status: :created
    end

    def update 
        adult = Adult.find(params[:id])
        adult.update(adult_params)
        render json: adult, status: :accepted
    end

    def destroy
        adult = Adult.find_by(id: params[:id])
        adult.destroy
        head :no_content
    end


    private

    def adult_params
        params.permit(:name, :age)
    end

    def profile_params
        params.permit(:adult_id, :child_id, :username, :email, :password, :password_confirmation )
    end
end
