class UserSerializer < ActiveModel::Serializer 
    attributes :id, :username, :first_name, :last_name, :journals, :birthday 
    has_many :journals 
end