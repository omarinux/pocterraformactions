#[Vnet]

%{ for index, virtualnetwork in virtualnetwork_name ~}
${virtualnetwork}
%{ endfor ~}