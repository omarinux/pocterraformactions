#[Vnet]

[nodes]
%{ for index, virtualnetwork in virtualnetwork_name ~}
${addressspace_name}${index} ${virtualnetwork}
%{ endfor ~}