class CreditSerializer < ActiveModel::Serializer
  attributes :id, :name, :role, :bio, :cast, :playbill
  def playbill
    {playbill_id: self.object.playbill.id, 
     playbill_title: self.object.playbill.title}
  end
end