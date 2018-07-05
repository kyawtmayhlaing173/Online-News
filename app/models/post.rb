class Post < ApplicationRecord
  belongs_to :User
  mount_uploader :picture, PictureUploader
  validate  :picture_size
  default_scope -> { order(created_at: :desc) }


def self.search(search, type)
  #debugger
  if type == nil
    where("title LIKE ?", "%#{search}%")
    where("detail LIKE ?", "%#{search}%")
 else
   #debugger
    where("title LIKE ?", "%#{search}%").where("category = ?", "#{type}")
  end
end


  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
