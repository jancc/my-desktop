#!/bin/sh
echo "Remote Host:"
read remotehost
echo "Remote User:"
read remoteuser
echo "Remote Port:"
read remoteport
echo "Local Port:"
read localport
ssh -L $localport:localhost:$remoteport $remoteuser@$remotehost
