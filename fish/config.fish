fish_vi_key_bindings

set -g JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_261.jdk/Contents/Home
set -g PATH ~/Library/Python/3.8/bin $JAVA_HOME/bin $PATH

for mode in insert default visual
  bind -M $mode \cf forward-char
end

function fish_prompt
  printf "%s %s" (set_color $fish_color_cwd)(basename (pwd))(set_color red) λ (set_color normal)
end


