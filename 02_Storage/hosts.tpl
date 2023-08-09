#[Vnet]

[sa]
%{ for index, sasname in sas_name ~}
${sasname} ${sas_at[index]} ${sas_tls[index]}
%{ endfor ~}


