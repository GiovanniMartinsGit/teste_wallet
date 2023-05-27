class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy, :credit, :debit]

  def index
    @users = User.all
  end

  def show
    @wallet_entries = @user.wallet_entries.order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'Usuário criado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Usuário atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'Usuário excluído com sucesso.'
  end

  def credit
    amount = params[:amount].to_f
    @user.update(saldo: @user.saldo + amount)
    redirect_to @user, notice: 'Saldo creditado com sucesso.'
  end

  def debit
    amount = params[:amount].to_f
    if amount <= @user.saldo
      @user.update(saldo: @user.saldo - amount)
      redirect_to @user, notice: 'Saldo debitado com sucesso.'
    else
      redirect_to @user, alert: 'Saldo insuficiente.'
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :saldo)
  end
end