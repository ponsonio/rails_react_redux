class Task < ApplicationRecord
    validates :title, presence: true
    has_many :users
    validates :username, uniqueness: {case_sensitive: false}
end
