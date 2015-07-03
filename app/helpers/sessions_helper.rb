module SessionsHelper
	# Logs in the given user
	def log_in(user)
		session[:user_id] = user.id 
	end

	# Checks if the user exists and returns it
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	# Returns true if the user has logged in
	def logged_in?
		!current_user.nil?
	end
end
