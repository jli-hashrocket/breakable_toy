require 'spec_helper'

describe ProfileActivity do
  let(:profile_ids) { [1,2,3] }
  let(:activity_ids) { [1,2,3] }

  it { should have_valid(:profile_id).when(*profile_ids) }
  it { should_not have_valid(:profile_id).when(nil) }
  it { should have_valid(:activity_id).when(*activity_ids) }
  it { should_not have_valid(:activity_id).when(nil) }

end
