class Client < ApplicationRecord
    has_many :pets, dependent: :destroy

    def pets_count
        self.pets.count
    end
end
