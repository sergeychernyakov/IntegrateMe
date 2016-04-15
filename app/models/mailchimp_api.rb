#
# Mailchimp integration
#
class MailchimpApi < Integration
  validates :name, :api_key, presence: true

  #
  # Queyes an integration job
  #
  # @param [Contact] contact
  def queue(contact)
    integrated_app.try(:execute, contact)
  end
end
