#[Vnet]

%{ for index, virtualnetwork in virtualnetwork_name ~}
${virtualnetwork} ${address_space[index]}
%{ endfor ~}