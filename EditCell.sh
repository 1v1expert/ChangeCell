#!/usr/bin/expect -f

set station [lindex $argv 0];
set login [lindex $argv 1];
set url [lindex $argv 2];
set authBD [lindex $argv 3];
set gen [string index $station 1]
set num [string range $station 2 3]

spawn ssh $login@$url -p 22222
send "\n"
expect "pe@pulse-station"
send "sudo -u default psql"
send "\n"
expect "pe@pulse-station"
send "update \"cell\" set is_tech=True where id=3;"
#send "select is_tech from \"cell\" where id=3;"
send "\n"
expect "pe@pulse-station"
#interact
