#!/bin/bash
ps -elF | grep $(whoami)

ps ahx -o uid | sort | uniq -c | sort -nr
