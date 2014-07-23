class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
	#第一个参数指定表名，第二个指定字段。
	add_index :users, :email, unique: true 
  end
end
