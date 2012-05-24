require 'spec_helper'

describe User do 

  before do 
    @user = User.new(name: "Example user", email: "user@example.com", password:  "foobar",
                      password_confirmation: "foobar")
                    end
  subject { @user }

  describe "remember token" do 
    before { @user.save}
    its(:remember_token) {should_not be_blank}
  end
  


  it {should respond_to(:password_confirmation)}
  it {should respond_to(:remember_token)}
  it {should respond_to(:authentication)}

end

describe "UserPages" do

	subject {page}

	describe "profile page" do 
		let(:user) {FactoryGirl.create(:user)}
		before {visit user_path(user)}
		it { should have_selector('h1', text: user.name)}
		it { should have_seletcor('title', text:user.name)}
	end

  
  describe "signup page" do
  	before {visit signup_path}

  	it {should have_selector('h1', text:'Sign up')}
  	it {should have_selector('title', text: full_title('Sign up'))}
  end

  	let(:submit) {"create my account"}
  
  	describe "with invalid information " do 
  		it "should not create a user" do 
  			expect {click_button submit }.not_to change(User, :count)
  		end
  	end

  	describe "with valid information" do
  		before do 
  			fill_in "Name", with: "exmaple User"
  			fill_in "Email", with: "user@example.com"
  			fill_in "Password", with: "foobar"
  			fill_in "Confirmation", with: "foobar"
  		end

  		it "should create a user" do
  			expect {click_button submit}.to change(User, :count).by(1)
  		end
  	end


  end

