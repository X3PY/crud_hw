class CreatePosts < ActiveRecord::Migration[5.0]
  def change #표의 공간을 어떻게 설정할지 지정하는 공간이다.
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
