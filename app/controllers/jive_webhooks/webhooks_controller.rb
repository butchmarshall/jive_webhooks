require_dependency "jive_webhooks/application_controller"

module Concerns
	module Controllers
		module Webhooks
			extend JiveWebhooks::Concerns::Controllers::Webhooks
		end
	end
end

module JiveWebhooks
	class WebhooksController < ApplicationController
		include Concerns::Controllers::Webhooks
	end
end
