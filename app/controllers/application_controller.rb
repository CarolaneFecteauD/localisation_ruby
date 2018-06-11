class ApplicationController < ActionController::Base
	before_action :set_locale

	def set_locale
		I18n.locale =  params[:locale] || I18n.default_locale
		#I18n.locale = params[:locale] if params[:locale].present?
	end


	private

	def default_url_options(options = {})
		{locale: I18n.locale}
	end
end
