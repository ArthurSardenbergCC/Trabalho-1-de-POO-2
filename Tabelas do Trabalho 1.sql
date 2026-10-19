CREATE DATABASE gerenciadorFrota;

CREATE TABLE motorista (
	motorista_id SERIAL PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
   	cnh VARCHAR(20) NOT NULL,
        categoria_cnh VARCHAR(5) NOT NULL
);

CREATE TABLE veiculo (
	veiculo_id SERIAL PRIMARY KEY,
	placa VARCHAR(10) NOT NULL,
    	modelo VARCHAR(100) NOT NULL,
    	marca VARCHAR(100) NOT NULL,
    	ano INT NOT NULL,
    	quilometragem_atual INT NOT NULL
);

CREATE TABLE viagem (
	viagem_id SERIAL PRIMARY KEY,
	cidade_origem VARCHAR(100) NOT NULL,
    	cidade_destino VARCHAR(100) NOT NULL,
    	distancia NUMERIC(10, 2) NOT NULL,
    	motorista_id INT NOT NULL,
    	veiculo_id INT NOT NULL,
    	CONSTRAINT fk_viagem_motorista FOREIGN KEY (motorista_id) REFERENCES motorista(motorista_id),
    	CONSTRAINT fk_viagem_veiculo FOREIGN KEY (veiculo_id) REFERENCES veiculo(veiculo_id)
);