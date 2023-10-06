class Child < ApplicationRecord
  # after_create  :create_profile
  has_one :profile 
  belongs_to :adult
  has_many :reviews
  has_many :books, through: :reviews

 
  private
  # def create_profile
  #   child = Child.find(:id)
  #   if child.exists?
  #     child.create_profile!(profile_params)
  #     render json: new_profile, status: :created
  #   else
  #     render json: {errors: [child.errors.full_messages]}, status: :unprocessable_entity
  #   end
  # end
  
  def profile_params
      params.permit(:adult_id, :child_id, :username, :email, :password, :password_confirmation )
  end

end
