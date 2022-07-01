/*
Instrodução ao PL/SQL

- Criar um procedure nomeada de "get_cliente"
- O ID do cliente deverá ser passado como parâmetro
- Caso o cliente não seja encontrado, o procedure deverá exibir uma mensagem informativa
*/ 

CREATE OR REPLACE PROCEDURE get_cliente(p_id_cliente IN tb_clientes.id_cliente%TYPE)
AS 
v_nome              tb_clientes.nome%TYPE;
v_sobrenome         tb_clientes.sobrenome%TYPE;
v_controle          INTEGER;

BEGIN
    SELECT COUNT(*) INTO v_controle
    FROM tb_clientes
    WHERE id_cliente = p_id_cliente;
    
    IF v_controle = 1 THEN
        SELECT nome, sobrenome INTO v_nome, v_sobrenome
        FROM tb_clientes
        WHERE id_cliente = p_id_cliente;
        
        DBMS_OUTPUT.PUT_LINE('Cliente localizado:'||v_nome||''||v_sobrenome);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cliente não localizado');
    END IF;
    
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERRO');
            
END get_cliente;

-- Invocando da procedure get_cliente

CALL get_cliente(2);