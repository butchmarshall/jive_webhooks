module JiveWebhooks
	module Concerns
		module Controllers
			module Webhooks
				extend ActiveSupport::Concern

				def create

					render :nothing => true, :status => 204
				end
			end
		end
	end
end