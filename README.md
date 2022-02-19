# Introduction
[sugar(1)][gh-mb-sugar-1] is a simple remote servers management tool, written
in POSIX sh(1), slightly more complex/complete than [drist][drist]
or [apply][apply], still much simpler than [slack][slack].

And, as it aims to solve a different problem space, orders of magnitude simpler
than [Ansible][wp-en-ansible], [Salt][wp-en-salt], [Chef][wp-en-chef],
[Puppet][wp-en-puppet], [etc.][wp-en-all-cms].

Its main purpose is to provide a thin layer of abstraction, just thick
enough to automate manual administration.

The governing principle is about rsync(8)-ing a local directory
containing scripts and data to a remote location. The scripts can
be conveniently run over ssh(1) on remote locations, and potentially
wrapped between locally executed hooks. Such hooks allows to
prepare data before syncing, or checking that a setup has been
performed as expected.

For convenience, users can create commands that are sequential
execution of normal commands. The tool also automatically manage
the creation of the matching sequences of hooks.

It is also **strongly** advised for scripts and hooks to be
[idempotent][wp-en-idempotence].

For more, see this [blog post][tales-sugar], head to the
[man page][gh-mb-sugar-1] or to the [source][gh-mb-sugar-src].

[slack]: https://sources.debian.org/src/slack/1:0.15.2-9/src/
[drist]: https://dataswamp.org/~solene/page-drist-official-website.html
[apply]: https://github.com/lloeki/apply

[gh-mb-sugar-1]:       https://github.com/mbivert/sugar/tree/master/sugar.1
[gh-mb-sugar-src]:     https://github.com/mbivert/sugar/tree/master/sugar

[wp-en-ansible]:     https://en.wikipedia.org/wiki/Ansible_(software)
[wp-en-salt]:        https://en.wikipedia.org/wiki/Salt_(software)
[wp-en-puppet]:      https://en.wikipedia.org/wiki/Puppet_(software)
[wp-en-chef]:        https://en.wikipedia.org/wiki/Chef_(software)
[wp-en-all-cms]:     https://en.wikipedia.org/wiki/Comparison_of_open-source_configuration_management_software
[wp-en-idempotence]: https://en.wikipedia.org/wiki/Idempotence
[wp-en-slackware]:   https://en.wikipedia.org/wiki/Slackware

[wp-fr-ansible]:     https://fr.wikipedia.org/wiki/Ansible_(logiciel)
[wp-fr-salt]:        https://fr.wikipedia.org/wiki/Salt_(logiciel)
[wp-fr-puppet]:      https://fr.wikipedia.org/wiki/Puppet
[wp-fr-chef]:        https://fr.wikipedia.org/wiki/Chef_(logiciel)
[wp-fr-all-cms]:     https://fr.wikipedia.org/wiki/Gestion_de_configuration
[wp-fr-idempotence]: https://fr.wikipedia.org/wiki/Idempotence
[wp-fr-slackware]:   https://fr.wikipedia.org/wiki/Slackware

[tales-sugar]:       https://tales.mbivert.com/on-sugar/
