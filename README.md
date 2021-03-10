# gitpod-net-unit-tests

[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/Hertattack/gitpod-net-unit-tests)

This is a sample repository to see if it is possible to debug unit-tests with gitpod.

The idea is as follows:

- Set a breakpoint in one of the unit-tests 
- Execute the launch task ".NET Core Attach"
- The launch task has a preLaunchTask "debug-test"
- The task starts the tests in the mode that they wait for a debugger to attach
- It does so with nohup to detach it from the script and redirects output to a file
- The ouput is filtered to get the PID.
- The PID is set as an environment variable
- Once the pre launch task is done, the actual launch task is executed
- It uses the environment variable set by the script "TEST_PROCESS_ID" to attach to the right process
- OR it should be able to use the name, however that does not work currently