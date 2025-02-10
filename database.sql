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
INSERT INTO users (name, email, password) VALUES 
('Admin', 'admin@example.com', '123456');

IINSERT INTO tasks (title, description, status, deadline, user_id) VALUES 
('Criar Interface', 'Desenvolver a UI do sistema', 'pendente', '2025-12-01', 1),
('Refatorar Código', 'Melhorar a organização do código', 'pendente', '2025-12-10', 1);