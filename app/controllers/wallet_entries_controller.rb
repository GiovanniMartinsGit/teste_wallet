class WalletEntriesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @wallet_entries = @user.wallet_entries.order(created_at: :desc)
  end
end