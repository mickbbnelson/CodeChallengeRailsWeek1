class Party < ApplicationRecord
    def self.parties 
        self.order("name DESC") 
    end
end
