class RemoveStringFromDose < ActiveRecord::Migration
  def change
    remove_column :doses, :string, :string
  end
end
