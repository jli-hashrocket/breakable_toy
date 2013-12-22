require 'spec_helper'

describe Activity do
  let(:names) { ["weightlifting","aerobics","yoga","biking","hiking"] }

  it { should have_valid(:name).when(*names) }
  it { should_not have_valid(:name).when(nil) }

end
