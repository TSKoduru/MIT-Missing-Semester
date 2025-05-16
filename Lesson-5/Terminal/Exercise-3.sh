#!/bin/sh


# Function that takes in a PID and waits until it's done.
pidwait() {

    # First, check to see that we have the right number of arguments. If so,
    # then check to see if we have a valid PID. Finally, execute the waiit.

    if [ $# -ne 1 ]
    then 
        echo "ERROR: You need to provide exactly one argument - the PID to wait for. Try again!"
        return 
    fi

    # Check for valid PID by using kill -0; Doesn't send signal but returns a 
    # nonzero exit status if the process doesn't exist.

    kill -0 $1
    if [ $? -ne 0 ]
    then
        echo "ERROR: PID $1 doesn't exist. Try again!"
        return 
    fi

    # Now we can do the wait command!
    echo "Waiting for PID $1 to finish...."
    wait $1
    echo "PID $1 finished - Returning!"

    return # Finished successfully!
}