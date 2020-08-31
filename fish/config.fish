fish_vi_key_bindings

for mode in insert default visual
    bind -M $mode \cf forward-char
end

function fish_prompt
    printf "%s %s" (set_color $fish_color_cwd)(basename (pwd))(set_color red) λ (set_color normal)
end
