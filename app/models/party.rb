class Party < ApplicationRecord
    validates :date, :category, :supplies, :budget, presence: true
    validates :date, uniqueness: true
    validates :budget, numericality: true, length: { in: 100..10000 }
    validate :party_validator



    def self.parties 
        self.order("name DESC") 
    end


  def party_validator
    if !self.name.start_with?("The")
        errors.add(:name, "must have a 'the'")
    end
  end

end
