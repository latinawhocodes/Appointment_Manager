class CreateDoctors < ActiveRecord::Migration[5.2]
    def change
        create_table :doctors do |t|
            t.string :first_name
            t.string :last_name
            t.string :specialty
            t.string :gender
            t.string :email

            t.integer :admin_id

            t.timestamps
        end
    end
end