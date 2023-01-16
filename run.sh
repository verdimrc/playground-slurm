#!/bin/bash

: "${RUNSH_HAHA:=haha}"

export RUNSH_HEHE=/fsx/data/bpe
echo -e "########\n########"
echo -e "${BASH_SOURCE[0]}" env "is\n`env | egrep 'HAHA|HEHE'`"
echo manual echo SBATCH_HAHA: $SBATCH_HAHA
echo manual echo RUNSH_HAHA: $RUNSH_HAHA
echo manual echo ADHOC_HAHA: $ADHOC_HAHA
echo manual echo ADHOC_HEHE: $ADHOC_HEHE
echo -e "========\n========"
