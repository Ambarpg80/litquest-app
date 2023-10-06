class Profile < ApplicationRecord
 has_secure_password
  belongs_to :adult, optional: true
  belongs_to :child, optional: true
end
