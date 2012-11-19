Description
===========
  Adds entries to /etc/security/limits.conf

Requirements
============
  None

Attributes
==========
See `attributes/default.rb` for defaults.

* `node['ulimit']['limits']` - array with all your limits.

Usage
=====

Add limits as hashes to the `node['ulimit']['limits']` array, like this:

  * In a role:

```Ruby
    :ulimit => {
      :limits => [{'domain' => '@users',
                   'type'   => 'hard',
                   'item'   => 'noproc',
                   'value'  => '30'},
                  {'domain' => '*',
                   'type'   => 'hard',
                   'item'   => 'rss',
                   'value'  => '10000'}]
    },
```

  * In a node.json-file for chef-solo:

```javascript
    "ulimit":{
        "limits":[{"domain":"@users",
                   "type":"hard",
                   "item":"noproc",
                   "value":"30"},
                  {"domain":"*",
                   "type":"hard",
                   "item":"rss",
                   "value":"'10000'"
                  }]
    }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

LICENSE AND AUTHOR:
===================

Copyright 2012, Jeff Eklund (jeff.eklund@gmail.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0
