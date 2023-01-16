#!/bin/bash
#SBATCH --exclusive
#SBATCH --wait-all-nodes=1

# e: immediately terminate this script on error
#
# a: all shell variables are exported as environment variables. Needed to
#    easily propagate SBATCH_HAHA to srun's subprocesses.
#
# x: verbose. Can be disabled to reduce verbosity.
set -eax;

env | grep SLURM | sort

: "${SBATCH_HAHA:=haha}"
export SBATCH_HEHE=$SLURM_JOB_NUM_NODES
echo -e "${BASH_SOURCE[0]}" env "is\n`env | egrep 'HAHA|HEHE'`"
echo "nemo-megatron: SBATCH_HAHA=$SBATCH_HAHA"
# NOTE: run.sh must have +x
srun "${ARGS[@]}" bash -c "
ADHOC_HEHE=456 ;
ADHOC_HAHA=123 \
/home/ec2-user/haha/run.sh
"
