class PlaybillSerializer < ActiveModel::Serializer
  attributes :id, :title, :about
  has_many :credits
  has_many :showtimes
end
