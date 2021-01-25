class JournalSerializer < ActiveModel::Serializer 
    attributes :id, :title, :year, :month, :dreams, :user_id 
    has_many :dreams 
end