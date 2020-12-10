class AddUserIdToPies < ActiveRecord::Migration[6.0]
  def change
    add_reference :pies, :user, index: true
  end
end
