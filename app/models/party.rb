class Party < ApplicationRecord
    belongs_to :category
    has_many :party_supplies
    has_many :supplies, through: :party_supplies

    validates :date, :budget, presence: true
    validates :date, uniqueness: true
    validates :budget, numericality: { in: 100..10000 }
    # validate :party_validator

    accepts_nested_attributes_for :category



    def self.parties 
        self.order("name DESC") 
    end


  def party_validator
    if !self.name.start_with?("The")
        errors.add(:name, "must have a 'the'")
    end
  end

end
