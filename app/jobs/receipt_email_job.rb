class ReceiptEmailJob < Struct.new(:transaction_id)

  # This before hook should be included in all Jobs to make sure that the service_name is
  # correct as it's stored in the thread and the same thread handles many different communities
  # if the job doesn't have host parameter, should call the method with nil, to set the default service_name
  # def before(job)
  #   # Set the correct service name to thread for I18n to pick it
  #   transaction = Transaction.find(transaction_id)
  # end

  def perform
    transaction = Transaction.find(transaction_id)
    RecipientEmailMailer.transaction_preauthorized(transaction).deliver_now
    RecipientEmailMailer.transaction_preauthorized_to_owner(transaction).deliver_now
  end
end
