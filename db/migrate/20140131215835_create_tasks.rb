class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :recipientname
      t.string :recipientemail

      t.timestamps
    end
  end
end
