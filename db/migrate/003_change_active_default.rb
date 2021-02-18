class ChangeActiveDefault < ActiveRecord::Migration
    def change
        change_column_default(
            :students,
            :active,
            from: nil,
            to: false
        )
    end
  end