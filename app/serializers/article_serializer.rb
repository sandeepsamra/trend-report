class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :image, :source, :category, :created_at, :updated_at
end
