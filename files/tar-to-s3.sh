#!/bin/bash
name=${product}-$(date '+%y-%m-%d').tar
tar -cvf ${name} /data
s3cmd put ${name} s3://${bucket}/${name}
