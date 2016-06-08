class Technology
  include Mongoid::Document
  include Mongoid::Paperclip

  field :link
  alias :name :link
  has_mongoid_attached_file :image,
                            :styles =>  {
                                :thumb => ['150x60', :png]
                            }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
