class Employee
  include Mongoid::Document
  include Mongoid::Paperclip

  field :first_name
  field :second_name
  field :position
  field :order_number, type: Integer, default: 1

  has_mongoid_attached_file :avatar,
                            :styles =>  {
                                :thumb => ['480х360', :png]
                            }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
