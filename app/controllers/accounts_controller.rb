class AccountsController < ApplicationController
  helper_method :account

  def choose
    cookies[:account_id] = account.id

    redirect_to account_path(account.id)
  end

  def show; end

  private

  def account
    @account ||= Account.find(params[:id])
  end
end
