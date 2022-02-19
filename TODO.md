# Resuming auto command @resume-auto
In a typical usage, we can have an automatic setup command running
a bunch of small setup. Once in a while, one of those can break;
it's a bit time consuming to have to go through the whole process
over and over; perhaps we could have an option for automatic scripts
that allows to start over at the last script that fails instead,
e.g. by keeping a token somewhere.

Such a token would need to be deleted upon $x.auto file update.

Note that not only is this time-consuming, but it also means that
the pre-hook must be careful in being idempotent.

Sample execution process:
	setup:
		update token to setup-foo
		setup-foo
		update token to setup-bar
		setup-bar
		update token to setup-baz
		setup-baz
		-> failure
	setup:
		setup.auto changed?
			yes
				-> start from scratch
			no
				fetch token
				no token
					-> start from scratch
				re-run pre-hook for script matching token
				start setup at script indicated by token

				setup-baz
				update token to setup-last
				setup-last
				remove token

				execute post-hooks
				-> terminate


# sugar.mkautos: fill the void @triple-dots-mkautos
We could use a special line '...' in a cmd.auto files that would
automatically expand to all the cmd-* scripts found in ready/bin
that aren't listed in cmd.auto.

This would help avoid missing includes, an issue that could also
be solved by a simple check, and a special debug flag.

# Parallezisation @parallelize
We may want to parallelize things when always safe to do so. This
should be conditional.
