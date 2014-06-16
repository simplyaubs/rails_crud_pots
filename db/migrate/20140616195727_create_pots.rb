class CreatePots < ActiveRecord::Migration
  def change
    create_table :pots do |t|
      t.string :size
      t.string :color
    end
  end
end
