use Bio::KBase::ERDB_Service::ERDB_ServiceImpl;

use Bio::KBase::ERDB_Service::Server;



my @dispatch;

{
    my $obj = Bio::KBase::ERDB_Service::ERDB_ServiceImpl->new;
    push(@dispatch, 'ERDB_Service' => $obj);
}


my $server = Bio::KBase::ERDB_Service::Server->new(instance_dispatch => { @dispatch },
				allow_get => 0,
			       );

my $handler = sub { $server->handle_input(@_) };

$handler;
