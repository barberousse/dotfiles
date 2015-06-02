# L https://github.com/bpinto/oh-my-fish/blob/master/themes/l/fish_prompt.fish
function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l normal (set_color normal)

  set -l arrow "λ"
  set -l cwd $blue(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set git_info $green(_git_branch_name)
    set git_info ":$git_info"

    if [ (_is_git_dirty) ]
      set -l dirty "*"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $cwd $git_info $normal ' ' $arrow ' '
end

# nvm-wrapper
. ~/.config/fish/nvm-wrapper/nvm.fish

# rbenv
set -gx RBENV_ROOT ~/.rbenv
set PATH $RBENV_ROOT/bin $PATH
set PATH $RBENV_ROOT/shims $PATH
bg rbenv init - fish
