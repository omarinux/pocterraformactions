#[Vnet]

[nodes]
%{ for index, virtualnetwork in virtualnetwork_name ~}
${virtualnetwork} ${locationtpl[index]}
%{ endfor ~}


