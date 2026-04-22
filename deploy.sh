#!/bin/bash
# FTP Deployment Script for Hostinger

HOST='ftp.yourhostinger.com'
USER='your_username'
PASS='your_password'

# Path to your local files
LOCAL_DIR='path/to/local/files/'
# Path on the server
REMOTE_DIR='/path/to/remote/directory/'

# Deploy function
function deploy() {
    lftp -u $USER,$PASS $HOST << EOF
    mirror -R $LOCAL_DIR $REMOTE_DIR
    bye
EOF
}

deply