# Day 1 -  Linux Process Inspection

## Experiment 1 : Process inspection

Commands: sleep 300 &, ps -p PID -o pid, ppid,stat,etime,cmd

Observation:
- PID identifies the process.
- PPID identifies its parent.
- S indicates interruptible sleep.
- sleep waits for its timer instead of continous;y using CPU.

## Experiment 2 : Open but deleted file

Commands: tail -f /tmp/demo.log, rm /tmp/demo.log, lsof -p PID

Observation:
- The pathname dissapeared after deletion.
- The running process still held the file open.
- lsof -p showed the deleted file descriptor.

## Experiment 3 : System call tracing

Commands: starce -o /tmp/sleep-trace.txt sleep 2

Observation:
- clock_nanosleep showed the two-second wait.
- some optional file lookups returned ENOENT.
- the process exited successfully with status 0.

## Key Learning

An open file can remain allocated after its directory entry is deleted, until its open references are closed.








