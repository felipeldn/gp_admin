class ClinicianSerializer < ActiveModel::Serializer
    attributes :id, :name, :username, :password_digest, :specialty
end