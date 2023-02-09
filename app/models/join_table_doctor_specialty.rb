class JoinTableDoctorSpecialty < ApplicationRecord
    belongs_to :doctor # je crée la jonction entre le doctor et la specialty via ma join table
    belongs_to :specialty
end
