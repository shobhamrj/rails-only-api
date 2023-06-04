class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :facts, :fact, :fun_fact
  end
end
