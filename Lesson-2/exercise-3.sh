 #!/usr/bin/env bash

# Keep running func() until we get an error, print out how many times it took
func() {
    n=$(( RANDOM % 100 ))

    if [[ n -eq 42 ]]; then
        echo "Something went wrong"
        >&2 echo "The error was using magic numbers"
        return 1
    fi

    echo "Everything went according to plan"
}

get_failure_on_func() {

    # Run command initially
    func
    total_tries=1

    # Keep running till we get a failure condition
    while [ $? -eq 0 ]
    do
        total_tries=$((total_tries + 1))
        func > /dev/null 2>&1
    done

    echo "Achieved a failure on func() after running $total_tries times."
}