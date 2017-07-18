function let --no-scope-shadowing
    if contains -- "$argv[1]" --help
        bash -c 'help let'
        return $status
    end

    if not string match -qr '^\w+' -- "$argv"
        bash -c "let $argv[1]"
        return 1
    end

    #
    # use no arguments except for argv
    #
    set argv (string match -r '(\w+)(.*)' -- "$argv")

    if set -q "$argv[2]"
        set $argv[2] (bash -c "a=$$argv[2]; let a$argv[3]; echo \$a")
    end
end
