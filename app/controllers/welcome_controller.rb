class WelcomeController < ApplicationController
    after_action :allow_iframe, only: :index
	def index
	end

    private

	def allow_iframe
		response.headers['X-Frame-Options'] = "ALLOWALL"
	end
end
