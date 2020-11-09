class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # NOTE: a surrogate primary key (ID) is automatically generated for us
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
