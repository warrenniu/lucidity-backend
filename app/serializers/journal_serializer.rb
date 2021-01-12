class JournalSerializer < ActiveModel::Serializer 
    attributes :id, :year, :month, :user_id 
    has_many :dreams 
end