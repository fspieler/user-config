#!/bin/bash

source init-common.sh

cat bashrc bashrc.chromebook > bashrc.generated
backup_and_link $HOME/.bashrc bashrc.generated
