class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.varchar :first_name
      t.varchar :last_name
      t.varchar :email_address
      t.int :age

      t.timestamps
    end
  end
end
