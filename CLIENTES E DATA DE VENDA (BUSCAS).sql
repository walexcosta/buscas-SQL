SELECT cliente.nome_cliente, venda.data_venda
from cliente
inner join venda
on cliente.id_cliente= venda.id_cliente