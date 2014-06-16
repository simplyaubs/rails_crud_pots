class AddColumnToPots < ActiveRecord::Migration
  def change
    add_column :pots, :owner, :string
  end
end
