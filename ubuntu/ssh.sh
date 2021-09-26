#!/bin/sh
#       FileName:  ssh.sh
#
#    Description:
#
#        Version:  1.0
#        Created:  2021-09-23 23:05:08
#  Last Modified:  2021-09-23 23:05:38
#       Revision:  none
#       Compiler:  gcc
#
#         Author:  zt ()
#   Organization:
/etc/init.d/ssh restart
/etc/init.d/xinetd restart
