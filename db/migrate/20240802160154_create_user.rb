class CreateUser < ActiveRecord::Migration[7.1]
  def change

    create_join_table :users, :cars do |t|
      t.index :car_id
      t.index :user_id
    end

    create_table :users  do |t|
      t.string(:first_name, null: false)
      t.string(:last_name, null: false)
      t.string(:email, null: false)
      t.timestamps
    end

    create_table :cars do |t|
      t.string(:car_make, null: false)
      t.string(:model, null: false)
      t.float(:battery_capacity, precision: 2, null: false)
      t.float(:max_charging_power, precision: 2, null: false)
      t.integer(:charge_port, default: 0)
      t.timestamps
    end
  end
end
