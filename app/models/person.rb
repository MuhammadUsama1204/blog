class Person < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true, numericality: { greater_than: 18}
end
