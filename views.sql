
CREATE VIEW tech_for_good.v_produto_unitario_qtd_ativo_por_mes AS
select
    date_format(p.criado_em, '%Y-%m') AS mes_ano,
    COUNT(*) as 'qtd',
    p.nome
from
    tech_for_good.produto_unitario p
where
    p.ativo = 1 AND p.vencido = 0
group by
    date_format(p.criado_em, '%Y-%m'),
    p.nome
order by
    date_format(p.criado_em, '%Y-%m');

CREATE VIEW tech_for_good.v_produto_unitario_qtd_vencido_por_mes AS
select
    date_format(p.criado_em, '%Y-%m') AS mes_ano,
    COUNT(*) as 'qtd',
    p.nome
from
    tech_for_good.produto_unitario p
where
    p.ativo = 1 AND p.vencido = 0
group by
    date_format(p.criado_em, '%Y-%m')
    p.nome
order by
    date_format(p.criado_em, '%Y-%m');


CREATE VIEW tech_for_good.v_produto_unitario_vencimento_15_e_30_dias AS SELECT (
SELECT 
    COUNT(*)
FROM 
    tech_for_good.produto_unitario p
where
    p.data_validade BETWEEN  curdate() AND DATE_ADD(curdate(), INTERVAL 15 DAY)
) as 'vencimento_em_15_dias', (
SELECT 
    COUNT(*)
FROM 
    tech_for_good.produto_unitario p
where
    p.data_validade BETWEEN DATE_ADD(curdate(), INTERVAL 16 DAY) AND DATE_ADD(curdate(), INTERVAL 30 DAY)
) as 'vencimento_em_30_dias';



CREATE VIEW tech_for_good.v_produto_unitario_vencido_x_arrecadado AS SELECT
    p.nome,
    SUM(CASE WHEN p.vencido = false THEN 1 ELSE 0 END) AS arrecadado,
    SUM(CASE WHEN p.vencido = true THEN 1 ELSE 0 END) AS vencido
FROM
    tech_for_good.produto_unitario p
GROUP BY
    p.nome;
