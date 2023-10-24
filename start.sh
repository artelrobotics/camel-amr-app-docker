#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

source "/opt/ros/$ROS_DISTRO/setup.bash"
source "$ROBOT_WS/devel/setup.bash"

APP_PATH="/app/amr_robot_app"
gunicorn -c gunicorn_config.py --bind $IP4:8000 wsgi:app --chdir $APP_PATH