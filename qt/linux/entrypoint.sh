#!/bin/sh
#
# This script finds the Qt installation path and sets up the environment
# before executing the main container command.

# Find the Qt installation directory (e.g., /opt/Qt/6.7.2/gcc_64)
export QT_DIR=/opt/Qt/$(ls /opt/Qt)/gcc_64
export PATH=$QT_DIR/bin:$PATH

# Execute the command passed to the container (the CMD)
exec "$@"