class UserSerializer < ActiveModel::Serializer 
    attributes :id, :username, :first_name, :last_name, :birthday 
    has_many :journals 
end