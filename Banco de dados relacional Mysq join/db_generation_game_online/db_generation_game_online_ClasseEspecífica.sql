select * from tb_personagem inner join tb_classe
on tb_personagem.tb_classe_id = tb_classe.id_classe
where tb_classe.id_classe = 5;
