class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :description,:long_name, :upvotes, :lat, :lon, :category, :user_id
  belongs_to :user
end
