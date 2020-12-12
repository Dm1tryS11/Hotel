class User < ApplicationRecord
    validates_uniqueness_of :email
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates_length_of :password, :within => 5..20
    has_secure_password 
end
