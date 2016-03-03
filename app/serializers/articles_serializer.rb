class ArticlesSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :image
end
