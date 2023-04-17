# Kill Local Host Instances Shell Script

This is a simple shell script that takes an input `n` and kills the local host's instances from 0 to `n-1`, where each instance listens on a port number of 3000 + i.

## Usage

To use this script, simply run it with an argument `n` to specify the number of instances to kill:

```bash
./kill_instances.sh 4
```

This will kill the instances listening on ports 3000, 3001, 3002, and 3003. Adjust the argument n as needed for your use case.

## Notes
- This script requires lsof and kill to be installed on your system.
- The script uses xargs to pass the output of lsof to kill, so be careful not to run it as root or with elevated privileges.
- The script will forcibly terminate any processes listening on the specified ports, so use it with caution.
- The script is provided as-is and without warranty or support. Use at your own risk.

