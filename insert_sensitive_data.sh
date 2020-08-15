#!/bin/bash
set -e
echo 'Cloning repo with secrets...'
git clone git@github.com:MichalLeszczynski/secret_files.git
echo 'Copying secrets to desired places...'
mv secret_files/hosts ansible/.
mv secret_files/* ansible/files/common/.
echo 'Cleaning up...'
rm -rf secret_files