
module SessionsHelper
	
	def sign_in (user)
		remember_token = User.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		user.update_attribute(:remember_token, User.encrypt(remember_token))
		self.current_user = user
	end

	#储存当前登录对象
	def current_user=(user)
		@current_user = user
		
	end

	#获取当前登录对象
	def current_user
		remember_token =cookies[:remember_token]
		#User.encrypt(remember_token)
		#884487b289b3ef380aca3ec65862f4321d966365
		#不能用hash的简写，因为带有下划线
		@current_user ||= User.find_by({"remember_token"=> User.encrypt(remember_token)})

	end

	#是否登录
	def signed_in?
		!current_user.nil?
	end

	#退出登录
	def sign_out
		current_use = nil
		cookies.delete(:remember_token)
		
	end
end
