#[Vnet]

%{ for index, virtualnetwork in virtualnetwork_name ~}
${virtualnetwork} ${addressspace_name[index]}
%{ endfor ~}