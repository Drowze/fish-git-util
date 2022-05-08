function _fish-git-util_install --on-event fish-git-util_install
  set -l base_url https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/lib/git
  curl $base_url/git_ahead.fish -o $__fish_config_dir/functions/git_ahead.fish
  curl $base_url/git_branch_name.fish -o $__fish_config_dir/functions/git_branch_name.fish
  curl $base_url/git_is_dirty.fish -o $__fish_config_dir/functions/git_is_dirty.fish
  curl $base_url/git_is_repo.fish -o $__fish_config_dir/functions/git_is_repo.fish
  curl $base_url/git_is_staged.fish -o $__fish_config_dir/functions/git_is_staged.fish
  curl $base_url/git_is_stashed.fish -o $__fish_config_dir/functions/git_is_stashed.fish
  curl $base_url/git_is_touched.fish -o $__fish_config_dir/functions/git_is_touched.fish
  curl $base_url/git_is_worktree.fish -o $__fish_config_dir/functions/git_is_worktree.fish
  curl $base_url/git_untracked.fish -o $__fish_config_dir/functions/git_untracked.fish

  for file in $__fish_config_dir/functions/git_*
    source $file
  end
end
