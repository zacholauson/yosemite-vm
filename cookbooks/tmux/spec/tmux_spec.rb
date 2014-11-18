require "spec_helper"

describe "tmux::tmux" do
  test_against_platforms do |platform, version|
    context "on #{platform}: #{version}" do
      let(:chef_run) { ChefSpec::SoloRunner.new.converge("tmux::tmux") }

      it "installs tmux package" do
        expect(chef_run).to install_package("tmux");
      end
    end
  end
end
