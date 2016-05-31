class Technology
  include Mongoid::Document
  include Mongoid::Paperclip

  field :link
  has_mongoid_attached_file :image,
                            :styles =>  {
                                :thumb => ['250x150', :png]
                            }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
