class AccountsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to accounts_path
    else
      render "new"
    end
  end

  def edit
    @account = get_account
  end

  def update
  @account = get_account
  if @account.update(account_params)
    redirect_to accountt_path(@account), notice: "Account successfully updated"
  else
    render "edit"
  end

  def delete
    @account = get_account
    @account.destroy
    redirect_to accounts_path
  end

  private

  def get_account
    Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:first_name, :last_name, :occupation, :)
  end
end
