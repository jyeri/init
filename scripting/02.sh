#!/bin/bash
echo "Users active:"
users

echo "Write user to delete:"
read login

if [ $login != root ]
then
    sudo pkill -u $login
    sudo deluser -rf $login
    echo "user deleted"
else
    echo "deleting root isn't allowed"
fi