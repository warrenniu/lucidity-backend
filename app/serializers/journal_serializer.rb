class JournalSerializer < ActiveModel::Serializer 
    attributes :id, :year, :month, :dreams, :user_id 
    has_many :dreams 
end