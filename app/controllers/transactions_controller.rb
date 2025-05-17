class TransactionsController < ApplicationController
  require 'csv'

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to transactions_path
    else
      render :new
    end
  end

  def upload
    if transaction_params[:csv_file].present?
      csv_file = transaction_params[:csv_file]
      csv_file.open do |file|
        CSV.foreach(file, headers: true) do |row, line_no|
          transaction = Transaction.new(
            amount: row["amount"],
            date: row["date"],
            transaction_type: row["transaction_type"],
            comment: row["comment"],
            bank_account_id: BankAccount.where(iban: transaction_params[:bank_account_iban])
          )
          return unless transaction.save
        end
      end
    end
  end

  private

  def transaction_params
    require(:transaction).permit(:amount, :date, :transaction_type, :bank_account_id, :csv_file)
  end
end
