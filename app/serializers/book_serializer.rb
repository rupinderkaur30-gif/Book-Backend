class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :author, :years_published, :image_url
end
