class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to root_path, notice: 'You have successfully subscribed!'
    else
      redirect_to root_path, alert: @subscription.errors.full_messages.first
    end
  end

  private

  def subscription_params
    params.permit(:email)
  end
end
