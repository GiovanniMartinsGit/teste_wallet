class Api::WalletController < ApplicationController
  before_action :set_user

  def credit
    amount = params[:amount].to_f
    @user.update(saldo: @user.saldo + amount)
    render json: { message: 'Crédito realizado com sucesso.' }
  end

  def debit
    amount = params[:amount].to_f
    if amount <= @user.saldo
      @user.update(saldo: @user.saldo - amount)
      render json: { message: 'Débito realizado com sucesso.' }
    else
      render json: { error: 'Saldo insuficiente.' }, status: :unprocessable_entity
    end
  end

  def balance
    render json: { balance: @user.saldo }
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
