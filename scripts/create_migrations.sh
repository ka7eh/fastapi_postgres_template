#! /usr/bin/env bash
 
 set -x

export PYTHONPATH=$PWD

alembic revision --autogenerate -m "${@}"
