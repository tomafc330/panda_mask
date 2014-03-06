panda_mask
==========
A gem for masking any contact information -- phone numbers and emails -- in a string.

Why?
====
There is a need for us because we are building a marketplace where we want the interactions to occur in our system. Similar to AirBnb, we want to mask any sort of communication channels outside of the marketplace.

Why is closed communication a good thing?
========================================
Well, if you look at AirBnb's model, the claim is that they want to protect people from potentially putting themselves in danger by not going through their system. Whether that has merit -- I'll leave it up to the reader.

How it works
============
We basically provide an extra method ```panda_mask``` on the ```string``` class that will strip all e-mails, phone numbers, and urls and replace it with ***.

Usage
=====

```
"contact us at tommytcchan [at] asf.com now".panda_mask # 'contact us at [removed as it violates our terms of service] now'
```

```
"contact us at 415.123.3333 now".panda_mask('[removed]') # 'contact us at [removed] now'
```

Why the name?
=============
I have a whole bunch of panda stickers on my desk + this is a gem to mask certain fields = panda mask!

Contributing to panda_mask
==========================

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
=========

Copyright (c) 2014 Tommy Chan and [VenueSpot]|(www.venuespot.co). See LICENSE.txt for
further details.