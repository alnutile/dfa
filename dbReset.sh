#!/bin/sh
rake db:reset
rake db:populate
rake db:test:prepare
#rake db:seed
