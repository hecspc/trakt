require File.dirname(__FILE__) + '/spec_helper'

describe Trakt do
  describe Trakt::User do
    let(:trakt) do
      details = get_account_details
      trakt          = Trakt.new :apikey => details['apikey'],
        :username => details['username'],
        :password => details['password']
      trakt
    end
    it "should list watched episodes from library" do

      result =  record(self) do
        trakt.user.library_shows_watched(user: 'hecspc')
      end
      result['status'].should == 'success'
      result['message'].should == '1 episodes marked as seen'
    end
  end
end
