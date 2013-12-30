require 'spec_helper'

describe ProfileActivity do
  let(:profile_ids) { [1,2,3] }
  let(:activity_ids) { [1,2,3] }

  it { should belong_to(:profile) }
  it { should belong_to(:activity) }

end
