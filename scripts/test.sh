#!/usr/bin/env bash
echo Using base: $1

export VSTEST_HOST_DEBUG=1

nohup dotnet test ${1}/src/UnitTest.sln | tee > testoutput &

pidAvailabe=""
while [ -z "$pidAvailabe" ] ; do
    sleep 1
    pidAvailabe=`cat testoutput | grep "Process Id:" | awk '{print $3}' | sed s/,//`
done

echo $pidAvailabe > testpid

echo Use Process ID:
echo $pidAvailabe

gp env TEST_PROCESS_ID=`cat testpid`
eval $(gp env -e)