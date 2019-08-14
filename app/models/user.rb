# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string
#  email           :text
#  password_digest :string
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    has_secure_password

    # Validations -- see the Rails Guide 
    validates :email, :presence => true, :uniqueness => true
    has_and_belongs_to_many :flights
end
