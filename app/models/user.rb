class User < ApplicationRecord
    has_many :projects
    has_secure_password

    def full_name
        self.first_name.concat(" #{self.last_name}")
    end

end
