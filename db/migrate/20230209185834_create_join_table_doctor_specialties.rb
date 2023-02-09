class CreateJoinTableDoctorSpecialties < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_doctor_specialties do |t|
      t.belongs_to :doctor, index:true # ça autorise à aller chercher des index d'autre part
      t.belongs_to :specialty, index:true 
      t.timestamps
    end
  end
end
