class Project
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  include Mongoid::Slug

  has_mongoid_attached_file :demo_img,
      :styles =>  {
        :thumb => ['635x635', :jpg]
      }

  has_mongoid_attached_file :wide_image,
                            :styles =>  {
                                :thumb => ['2000x600', :jpg]
                            }

  field :link
  field :link_text
  field :name
  field :order, type: Integer
  field :description, type: String

  slug :name
  slug do |cur_object|
    cur_object.name.to_url
  end

  has_and_belongs_to_many :technologies

  validates_attachment_content_type :demo_img, :wide_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
