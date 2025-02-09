CREATE DATABASE IF NOT EXISTS database

USE DATABASE IF NOT EXISTS database

-- Criação da tabela de usuários
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação da tabela de tarefas
CREATE TABLE IF NOT EXISTS tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    status TEXT CHECK( status IN ('PENDING', 'IN_PROGRESS', 'COMPLETED') ) DEFAULT 'PENDING',
    due_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Inserção de dados iniciais
INSERT INTO users (username, password) VALUES ('admin', 'admin123');
INSERT INTO tasks (user_id, title, description, status, due_date) VALUES 
(1, 'Primeira Tarefa', 'Descrição da primeira tarefa', 'PENDING', '2024-12-31');