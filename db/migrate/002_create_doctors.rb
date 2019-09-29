class CreateDoctors < ActiveRecord::Migration
    def change
        create_table :doctors do |t|
            t.string :first_name
            t.string :last_name
            t.string :specialty
            t.string :gender
            t.string :email_address

            t.integer :admin_id

            t.timestamps
        end
    end
end