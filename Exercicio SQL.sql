





--exercicio básico usando chave estrangeira e insert em mais de uma linha



CREATE DATABASE mercadinho

create table tbl_ctg (
id_ctg serial primary key,
categoria varchar(20) not null
);

create table tbl_prdt (
id_prdt serial primary key,
produto varchar(20) not null,
preco_prdt decimal(10,2) not null,
id_ctg integer not null,
foreign key (id_ctg) references tbl_ctg (id_ctg)
);


insert into tbl_ctg (categoria) values ('Laticinios'), ('Limpeza'), ('Hortifruti');

insert into tbl_prdt (produto, preco_prdt, id_ctg) values ('Leite', 5.00, 1), ('Leite condensado', 3.00, 1), 
('Doce de leite', 8.00, 1), ('Iogurte', 10.00, 1), ('Bebidas láctea', 8.00, 1), ('Leites fermentado', 7.00, 1), 
('Fórmula infantil', 15.00, 1), ('Sorvete', 11.00, 1), ('Frozen Iogurt', 12.00, 1), ('Chantilly', 10.00, 1), 
('Manteiga', 7.00, 1), ('Requeijão', 6.00, 1), ('Cream Cheese', 10.00, 1), ('Creme de leite', 8.00, 1);

insert into tbl_prdt (produto, preco_prdt, id_ctg) values ('Álcool', 8.00, 2), ('Detergente', 6.00, 2), 
('Sabão', 5.00, 2), ('Desinfetante', 7.00, 2), ('Panos de chão', 10.00, 2), ('Balde', 11.00, 2), ('Esponja', 4.00, 2), 
 ('Tira-limo', 10.00, 2);

insert into tbl_prdt (produto, preco_prdt, id_ctg) values ('Laranja', 11.00, 3), ('Limão', 5.00, 3), ('Melancia', 
7.00, 3), ('Melão', 6.00, 3), ('Maçã', 6.00, 3), ('Mamão', 8.00, 3), ('Morango', 5.00, 3), ('Ameixa', 6.00, 3);