class Admin < ApplicationRecord #1
    validates_uniqueness_of :name
    validates_length_of :password, :within => 5..20
    has_secure_password
    validates_format_of :key, :with =>/1{5}/
end
