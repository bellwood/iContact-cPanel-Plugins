install:
	[ -d /var/cpanel/perl/Cpanel/iContact/Provider/Schema ] || mkdir -p /var/cpanel/perl/Cpanel/iContact/Provider/Schema/
	cp -f Cpanel/iContact/Provider/Schema/*.pm /var/cpanel/perl/Cpanel/iContact/Provider/Schema/
	cp -f Cpanel/iContact/Provider/*.pm /var/cpanel/perl/Cpanel/iContact/Provider/

test:
	prove t/*.t