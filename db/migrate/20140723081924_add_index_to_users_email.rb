class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
	#��һ������ָ���������ڶ���ָ���ֶΡ�
	add_index :users, :email, unique: true 
  end
end
