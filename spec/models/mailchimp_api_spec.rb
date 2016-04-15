require 'rails_helper'

RSpec.describe Integration, type: :model do

  let(:integration) { FactoryGirl.build_stubbed(:mailchimp) }
  let(:contact) { FactoryGirl.build_stubbed(:contact) }

  describe '::decorator_class' do
    subject { Integration.decorator_class }
    it { should eq IntegrationDecorator }
  end

  describe 'integrated_app' do
    subject { integration.integrated_app }

    it { should be_a IntegrateMe::Optin::MailchimpApi }

    context 'type is nil' do
      before do
        integration.type = nil
      end
      it { should be_nil }
    end
  end

  describe 'queue' do
    it 'integrated_app expects execute'  do
      expect(integration.integrated_app).to receive(:execute).with(contact)
      integration.queue(contact)
    end
  end

  describe 'successful_connection' do
    subject { integration.successful_connection }
    it { should be_truthy }
  end

  describe 'integration_class' do
    subject { integration.integration_class }
    it { should be_truthy }
  end

  describe 'required?' do
    subject { integration.required?(:name) }
    it { should be_truthy }
  end
end
