Rails.application.routes.draw do

  mount JiveWebhooks::Engine => "/jive_webhooks"
end
