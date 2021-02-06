class Playbill < ApplicationRecord
    has_many :credits, :dependent => :destroy
    has_many :showtimes, :dependent => :destroy
end
