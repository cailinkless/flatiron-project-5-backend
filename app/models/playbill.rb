class Playbill < ApplicationRecord
    has_many :credits
    has_many :showtimes
end
