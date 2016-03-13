JiveWebhooks::Engine.routes.draw do
	post '' => "webhooks#create", :as => :webhook_callback
end
