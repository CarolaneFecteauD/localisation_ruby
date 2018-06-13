class ApplicationController < ActionController::Base
	
  protect_from_forgery with: :exception
  before_action :set_current_user

  before_action :set_locale
  before_action :authenticate_user!

  

	def set_locale
		I18n.locale =  params[:locale] || I18n.default_locale
		#I18n.locale = params[:locale] if params[:locale].present?
	end


	private

	def default_url_options(options = {})
		{locale: I18n.locale}
	end

	private

    def set_current_user
      if session[:user_id]
        @current_user = User.find(session[:user_id])
      end
    end
end
