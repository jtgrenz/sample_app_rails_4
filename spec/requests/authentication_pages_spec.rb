require 'spec_helper'

describe "Authentication" do
<<<<<<< HEAD
	subject { page }

	describe "signin page" do
		before { visit signin_path }

		it { should have_content('Sign in') }
		it { should have_title('Sign in') }
	end

	describe "signin" do
		before { visit signin_path }

		describe "with invalid information" do
			before { click_button "Sign in" }

			it { should have_title('Sign in') }
			it { should have_selector('div.alert.alert-error',
       text: "Invalid") }

			describe "after visiting another page" do
				before { click_link "Home" }
				it { should_not have_selector('div.alert.alert-error',
         text: 'Invalid') }
			end
		end

=======

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
  end

  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_title('Sign in') }
      it { should have_error_message('Invalid') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_title(user.name) }
<<<<<<< HEAD
      it { should have_link('Users', href: users_path) }
      it { should have_link('Profile',     href: user_path(user)) }
      it { should have_link('Sign out',    href: signout_path) }
      it { should have_link('Settings', href: edit_user_path(user)) }
=======
      it { should have_link('Users',       href: users_path) }
      it { should have_link('Profile',     href: user_path(user)) }
      it { should have_link('Settings',    href: edit_user_path(user)) }
      it { should have_link('Sign out',    href: signout_path) }
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
      it { should_not have_link('Sign in', href: signin_path) }

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
    end
  end

  describe "authorization" do

<<<<<<< HEAD
    describe "as non-admin user" do
      let(:user) { FactoryGirl.create(:user) }
      let(:non_admin) {FactoryGirl.create(:user) }

      before { sign_in non_admin, no_capybara: true }

      describe "Submitting a DELETE request to the Users#destroy action" do
        before { delete user_path(user) }
        specify { expect(response).to redirect_to (root_url) }
      end
    end

    describe "for non-signed-n users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Micropost controller" do
        describe "submitting to the create action" do
          before { post microposts_path }
          specify { expect(response).to redirect_to(signin_path) }
        end

        describe "submitting to the destory action" do 
          before { delete micropost_path(FactoryGirl.create(:micropost)) }
          specify { expect(response).to redirect_to(signin_path) }
        end
      end
      
      describe "when attempting to visit a protected page" do
        before do
          visit edit_user_path(user)
          fill_in "Email",  with: user.email
=======
    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "when attempting to visit a protected page" do
        before do
          visit edit_user_path(user)
          fill_in "Email",    with: user.email
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
          fill_in "Password", with: user.password
          click_button "Sign in"
        end

<<<<<<< HEAD
        describe "after sigining in" do
=======
        describe "after signing in" do

>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
          it "should render the desired protected page" do
            expect(page).to have_title('Edit user')
          end
        end
      end

<<<<<<< HEAD


      describe "in the Users controller" do
=======
      describe "in the Users controller" do

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_title('Sign in') }
        end

        describe "submitting to the update action" do
          before { patch user_path(user) }
          specify { expect(response).to redirect_to(signin_path) }
        end

        describe "visiting the user index" do
          before { visit users_path }
          it { should have_title('Sign in') }
        end
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba

        describe "visiting the following page" do
          before { visit following_user_path(user) }
          it { should have_title('Sign in') }
        end

        describe "visiting the followers page" do
          before { visit followers_user_path(user) }
          it { should have_title('Sign in') }
        end
<<<<<<< HEAD

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_title('Sign in') }
        end

        describe "submitting to the update action" do
          before { patch user_path(user) }
          specify { expect(response).to redirect_to(signin_path) }
        end

        describe "as wrong user" do
          let(:user) { FactoryGirl.create(:user) }
          let(:wrong_user) {FactoryGirl.create(:user, email: "wrong@example.com") }
          before { sign_in user, no_capybara: true }

          describe  "submitting a GET request to the Users#edit action" do
            before { get edit_user_path(wrong_user) }
            specify { expect(response.body).not_to match(full_title('Edit user')) }
            specify { expect(response).to redirect_to(root_url) }
          end

          describe "submitting a PATCH request to the Users#update action" do
            before { patch user_path(wrong_user) }
            specify { expect(response).to redirect_to(root_url) }
          end

          describe "visiting the user index" do
            before { visit users_path } 
            it { should have_title('Sign in') }
          end 

        end
      end
     describe "in the Relationships controller" do
=======
      end

      describe "in the Microposts controller" do

        describe "submitting to the create action" do
          before { post microposts_path }
          specify { expect(response).to redirect_to(signin_path) }
        end

        describe "submitting to the destroy action" do
          before { delete micropost_path(FactoryGirl.create(:micropost)) }
          specify { expect(response).to redirect_to(signin_path) }
        end
      end

      describe "in the Relationships controller" do
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
        describe "submitting to the create action" do
          before { post relationships_path }
          specify { expect(response).to redirect_to(signin_path) }
        end

        describe "submitting to the destroy action" do
          before { delete relationship_path(1) }
          specify { expect(response).to redirect_to(signin_path) }
        end
<<<<<<< HEAD

    end
  end
end
end

=======
      end
    end

    describe "as wrong user" do
      let(:user) { FactoryGirl.create(:user) }
      let(:wrong_user) { FactoryGirl.create(:user, email: "wrong@example.com") }
      before { sign_in user, no_capybara: true }

      describe "submitting a GET request to the Users#edit action" do
        before { get edit_user_path(wrong_user) }
        specify { expect(response.body).not_to match(full_title('Edit user')) }
        specify { expect(response).to redirect_to(root_url) }
      end

      describe "submitting a PATCH request to the Users#update action" do
        before { patch user_path(wrong_user) }
        specify { expect(response).to redirect_to(root_url) }
      end
    end

    describe "as non-admin user" do
      let(:user) { FactoryGirl.create(:user) }
      let(:non_admin) { FactoryGirl.create(:user) }

      before { sign_in non_admin, no_capybara: true }

      describe "submitting a DELETE request to the Users#destroy action" do
        before { delete user_path(user) }
        specify { expect(response).to redirect_to(root_url) }
      end
    end
  end
end
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
