function let --no-scope-shadowing
    if not string match -qr '^\w+' -- "$argv" # variable name is not detected
        bash -c "let $argv[1]"
        return $status
    end
    
    if string match -qr '^argv\W' -- "$argv" # for argv
        set -l expr (string match -r '(\w+)(.*)' -- "$argv")
        set -e argv
        set argv (bash -c "v=$$expr[2]; let v$expr[3]; echo \$v")
    else # for other variables
        set argv (string match -r '(\w+)(.*)' -- "$argv")
        set $argv[2] (bash -c "v=$$argv[2]; let v$argv[3]; echo \$v")
    end
end

