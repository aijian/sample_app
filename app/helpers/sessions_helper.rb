
module SessionsHelper
	
	def sign_in (user)
		remember_token = User.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.encrypt(remember_token))
		self.current_user = user
	end

	#���浱ǰ��¼����
	def current_user=(user)
		@current_user = user
		
	end

	#��ȡ��ǰ��¼����
	def current_user
		remember_token =cookies[:remember_token]
		#User.encrypt(remember_token)
		#884487b289b3ef380aca3ec65862f4321d966365
		#������hash�ļ�д����Ϊ�����»���
		@current_user ||= User.find_by({"remember_token"=> User.encrypt(remember_token)})

	end

	#�Ƿ��¼
	def signed_in?
		!current_user.nil?
	end

	#�˳���¼
	def sign_out
		current_use = nil
		cookies.delete(:remember_token)
		
	end
end
