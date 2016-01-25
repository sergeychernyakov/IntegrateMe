# Getting the app running

1. bundle install
2. rake db:migrate && RAILS_ENV=test rake db:migrate
3. rake db:seed
4. rspec
5. rails s

Integrate with MailChimp
* Send through their name/email
* Create/use your own MailChimp account if needed
* Unit and Integration (actually sends to MailChimp) specs
