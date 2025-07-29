module SignInSupport
  def sign_in(user)
    visit root_path
    fill_in 'user[email]', with: user.email
    fill_in 'user_password', with: user.password
    click_on('Log in')
    expect(page).to have_current_path(root_path)
  end
end