#!/bin/bash

if pgrep -f "./apoolminer --algo qubic_quai" > /dev/null; then
	    echo "Process is running."
    else
	        echo "Process is NOT running! Restarting..."
		    bash "$HOME/apoolminer/run.sh" &
fi

