class CreateContactInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_infos do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :building_optional
      t.string :city
      t.string :country
      t.string :province
      t.string :post_code
      t.string :phone

      t.timestamps
    end
  end
end
