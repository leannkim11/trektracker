class Trip < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :user
  belongs_to :destination
  has_one_attached :photo

  def image_url
    rails_blob_path(self.photo, disposition: "attachment", only_path: true)
  end

end
