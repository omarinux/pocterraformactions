#[Vnet]

%{ for index, virtualnetwork in virtualnetwork_name ~}
${virtualnetwork[index]} ${addressspace_name[index]} ${locationtpl[index]}
%{ endfor ~}