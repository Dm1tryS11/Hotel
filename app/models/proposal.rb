class Proposal < ApplicationRecord
    validates_uniqueness_of :email
    validates_uniqueness_of :name
    validates_uniqueness_of :passport
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates_format_of :passport, :with => /[0-9]{10}/
    validates_date :arrival, on_or_after: Date.today
    validates_date :departure, after: :arrival
end
