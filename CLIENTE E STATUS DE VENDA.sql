SELECT cliente.nome_cliente, data_venda
from cliente
inner join venda
on cliente.id_cliente= venda.id_cliente