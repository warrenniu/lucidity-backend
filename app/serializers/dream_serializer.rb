class DreamSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :story, :character, :place, :image, :date, :rating, :journal_id

  # def image 
  #   if object.image.attached? 
  #     { 
  #       url: rails_blob_url(object.image)
  #     }
  #   end
  # end
end
