class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :doctor, index: true # création nouvelle colonne doctor, elle prendra l'id du doctor en compte
      t.belongs_to :patient, index: true
      t.timestamps
    end
  end
end
