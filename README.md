panda_mask
==========
A gem for masking any contact information such as websites, phone numbers, and emails in a string. 

Why?
====
There is a need for us because we are building a marketplace where we want the interactions to occur in our system. Similar to AirBnb, we want to mask any sort of communication channels outside of the marketplace.

Why is closed communication a good thing?
========================================
Well, if you look at AirBnb's model, the claim is that they want to protect people from potentially putting themselves in danger by not going through their system. Whether that has merit -- I'll leave it up to the reader.

How it works
============
We basically provide an extra method ```panda_mask``` on the ```string``` class that will strip all e-mails, phone numbers, and urls and replace it with ***.

Why the name?
=============
I have a whole bunch of panda stickers on my desk + this is a gem to mask certain fields = panda mask!

Contribute
==========
Please send a PR with tests included.
