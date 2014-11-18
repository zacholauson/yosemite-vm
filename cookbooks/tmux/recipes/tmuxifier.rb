git node[:tmux][:tmuxifier_dir] do
  repository node[:tmux][:tmuxifier_repo]
  action :sync
end

git node[:tmux][:tmuxifier_layout_dir] do
  repository node[:tmux][:layouts_repo]
  action :sync
end
