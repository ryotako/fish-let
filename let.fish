function let --no-scope-shadowing
    if not string match -qr '^\w+' -- "$argv"
        bash -c "let $argv[1]"
        return $status
    end

    if string match -qr '^argv\W' -- "$argv" # argv
        set -l expr (string match -r '(\w+)(.*)' -- "$argv")
        set -e argv
        set argv (bash -c "v=$$expr[2]; let v$expr[3]; echo \$v")
    else # other variables
        set argv (string match -r '(\w+)(.*)' -- "$argv")
        set $argv[2] (bash -c "v=$$argv[2]; let v$argv[3]; echo \$v")
    end
end

