default[:current_user] = "vagrant"
default[:home] = "/Users/#{default[:current_user]}"
default[:tmux] = {
  tmuxifier_repo: "https://github.com/jimeh/tmuxifier.git",
  layouts_repo: "git@github.com:zacholauson/tmuxifier-layouts.git",
  tmuxifier_dir: "#{default[:home]}/.tmuxifier",
  tmuxifier_layout_dir: "#{default[:tmux][:tmuxifier_dir]}/layouts"
}
