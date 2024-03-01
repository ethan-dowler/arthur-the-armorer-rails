class AuthenticatedController < ApplicationController
  before_action :ensure_account_exists

  def current_account = Account.find_by(id: cookies[:account_id])

  def ensure_account_exists
    raise "No account selected" if cookies[:account_id].nil?
    raise "Invalid account" if current_account.nil?
  end
end
