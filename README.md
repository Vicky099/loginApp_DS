Required:

  Rails : 6.0.3
  
  Ruby : 2.6.3
  
For Action Mailer config use Mailcatcher. Also change database.yml config as per your credentials

https://rubygems.org/gems/mailcatcher/versions/0.6.1

Note :

Only 'admin' role can able to login in portal. Please use below query to assign Admin role

user = User.find_by(email: 'YOUR-EMAIL-ID')

user.set_role('admin')
