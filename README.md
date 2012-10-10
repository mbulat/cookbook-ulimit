Description
===========
  Adds entries to /etc/secutiry/limits.conf

Requirements
============
  None

Attributes
==========
Add limits as hashes to the [ulimit][limits] array, like this:

  * In a role:

    :ulimit => {
      :limits => [{'domain' => '@users',
                   'type'   => 'hard',
                   'item'   => 'noproc',
                   'value'  => '30'},
                  {'domain' => '*',
                   'type'   /=> 'hard',
                   'item'   => 'rss',
                   'value'  => '10000'}]
    },

  * In a node.json-file for chef-solo:

    "ulimit":{
        "limits":[{"domain":"@users",
                   "type":"hard",
                   "item":"noproc",
                   "value":"30"
                  },
                  {"domain":"*",
                   "type":"hard",
                   "item":"rss",
                   "value":"'10000'"
                  }]
    }


Usage
=====

LICENSE AND AUTHOR:
===================

Copyright 2012, Jeff Eklund <jeff.eklund@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0
