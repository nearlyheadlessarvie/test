use JSON::XS;
use LWP::Simple;

my $json = get('https://ip-ranges.amazonaws.com/ip-ranges.json');
die "Could not get json!" unless defined $json;

my $decoded_json = decode_json( $json );

$B->iptables("-t nat -A PREROUTING -i eth1 -p tcp -m tcp --dport 443 -d ", $_->{ip_prefix} , " -j ACCEPT") foreach ( @{ $decoded_json->{prefixes} } );
