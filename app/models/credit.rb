class Credit < ApplicationRecord
  belongs_to :playbill, dependent: :destroy
end
