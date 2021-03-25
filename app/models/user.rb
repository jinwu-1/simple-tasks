class User < ApplicationRecord
    has_many :projects
    
    validates_presence_of :first_name, :last_name, :email
    validates :email, uniqueness: true
    validates :password, length: { minimum: 4 }

    has_secure_password

    def full_name
        self.first_name.concat(" #{self.last_name}")
    end

end
