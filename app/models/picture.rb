class Picture < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :large => "500x500", :medium => "300x300>"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  def next
    user.pictures.where("id > ?", id).first
  end

  def prev
    user.pictures.where("id < ?", id).last
  end

end
