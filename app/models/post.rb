class Post < ApplicationRecord
  belongs_to :User
  mount_uploader :picture, PictureUploader
  validate  :picture_size
  default_scope -> { order(created_at: :desc) }


def self.search(search)
  #debugger
  where("title LIKE ?", "%#{search}%")
  where("detail LIKE ?", "%#{search}%")
end


  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
