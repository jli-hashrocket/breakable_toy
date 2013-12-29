require 'spec_helper'

describe Profile do
  let(:last_names) { ["Smith","Jones","Robinson"] }
  let(:first_names) { ["Mike","John","Melissa"] }
  let(:usernames) { ["swole_n_ripped","diesel_as_fuck",'squatqueen']}
  let(:passwords) { ["2jack3d","@$$hole98","pr3ttynp!nk"] }
  let(:emails) { ["mike@gmail.com","john@gmail.com","mrobinson@gmail.com"] }


  it { should have_valid(:last_name).when(*last_names) }
  it { should_not have_valid(:last_name).when(nil) }
  it { should have_valid(:first_name).when(*first_names) }
  it { should_not have_valid(:last_name).when(nil) }
  it { should have_valid(:username).when(*usernames) }
  it { should_not have_valid(:username).when(nil) }
  it { should have_valid(:password).when(*passwords) }
  it { should_not have_valid(:password).when(nil) }
  it { should have_valid(:email).when(*emails) }
  it { should_not have_valid(:email).when(nil) }

  describe 'password' do
    before { subject.password_confirmation = *passwords }
    it { should have_valid(:password).when(*passwords) }
    it { should_not have_valid(:password).when(nil) }
  end

  it { should have_many(:profile_activities) }
  it { should have_many(:activities).through(:profile_activities) }


end
