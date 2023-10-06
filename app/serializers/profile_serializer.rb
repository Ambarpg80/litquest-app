class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest
  belongs_to :adult
  belongs_to :child
end
