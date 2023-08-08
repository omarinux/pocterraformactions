#[Vnet]

[nodes]
%{ for index, virtualnetwork in virtualnetwork_name ~}
${virtualnetwork} ${locationtpl[index]} ${addressspace_name[index]}
%{ endfor ~}


