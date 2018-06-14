#!/bin/sh
echo "Remote Host:"
read remotehost
echo "Remote User:"
read remoteuser
echo "Remote Port:"
read remoteport
echo "Local Port:"
read localport
ssh -nNT -L $localport:localhost:$remoteport $remoteuser@$remotehost
