class Project
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :demo_img,
      :styles =>  {
        :thumb => ['200x150', :png]
      }



  field :link
  field :link_text
  field :name
  field :description, type: String

  validates_attachment_content_type :demo_img, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
