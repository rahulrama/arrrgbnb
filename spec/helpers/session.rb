module SessionHelpers

  # def sign_in(email:, password:)
  #   visit '/sessions/new'
  #   fill_in :email, with: email
  #   fill_in :password, with: password
  #   click_button 'Log in'
  # end

  def sign_up(name:'Alice Inne',
              username:'Wonderland',
              email:'alice@example.com',
              phone:'4444-44441',
              password:'12345678',
              password_confirmation:'12345678'
             )
    visit '/users/new'
    fill_in :name, with: name
    fill_in :username, with: username
    fill_in :email, with: email
    fill_in :phone, with: phone
    fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
    click_button 'Sign up'
  end

#   def recover_password
#     visit '/users/recover'
#     fill_in :email, with: "alice@example.com"
#     click_button "Submit"
#   end
end
