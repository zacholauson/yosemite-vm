require "spec_helper"

describe "tmux::tmuxifier" do
  test_against_platforms do |platform, version|
    context "on #{platform}: #{version}" do
      let(:chef_run)       { ChefSpec::SoloRunner.new.converge("tmux::tmuxifier") }

      let(:tmuxifier_dir)  { chef_run.node[:tmux][:tmuxifier_dir] }
      let(:tmuxifier_repo) { chef_run.node[:tmux][:tmuxifier_repo] }
      let(:layouts_dir)    { chef_run.node[:tmux][:tmuxifier_layout_dir] }
      let(:layouts_repo)   { chef_run.node[:tmux][:layouts_repo] }

      it "downloads jimeh/tmuxifier to the tmuxifier_dir" do
        expect(chef_run).to sync_git(tmuxifier_dir).with(repository: tmuxifier_repo)
      end

      it "downloads zacholauson/tmuxifier-layouts to the tmuxifier_layout_dir" do
        expect(chef_run).to sync_git(layouts_dir).with(repository: layouts_repo)
      end
    end
  end
end
