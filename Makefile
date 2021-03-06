install:
	[ -d /var/cpanel/perl/Cpanel/iContact/Provider/Schema ] || mkdir -p /var/cpanel/perl/Cpanel/iContact/Provider/Schema/
	cp -f lib/Cpanel/iContact/Provider/Schema/*.pm /var/cpanel/perl/Cpanel/iContact/Provider/Schema/
	cp -f lib/Cpanel/iContact/Provider/*.pm /var/cpanel/perl/Cpanel/iContact/Provider/

test:
	[ -x /usr/local/cpanel/3rdparty/bin/prove ] && /usr/local/cpanel/3rdparty/bin/prove t/*.t; /bin/true
	[ ! -x /usr/local/cpanel/3rdparty/bin/prove ] && prove t/*.t; /bin/true
