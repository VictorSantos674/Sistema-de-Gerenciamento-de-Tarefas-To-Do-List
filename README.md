# 📌 Sistema de Gerenciamento de Tarefas (To-Do List)

## 📖 Descrição
Este é um sistema de gerenciamento de tarefas simples e eficiente, desenvolvido em Java, utilizando SQLite como banco de dados e JavaFX para a interface gráfica. O objetivo é fornecer uma aplicação intuitiva para criar, atualizar e excluir tarefas, facilitando a organização pessoal e profissional dos usuários.

## 🚀 Tecnologias Utilizadas
- **Java** (versão 11+)
- **JavaFX** (Interface Gráfica)
- **JDBC** (Conexão com o banco de dados)
- **SQLite** (Banco de dados local)
- **Maven** / **Gradle** (Gerenciamento de dependências)

## 🛠 Funcionalidades
✅ Cadastro de usuários com autenticação.
✅ CRUD completo de tarefas (Criar, Ler, Atualizar, Excluir).
✅ Filtros por status (Pendente, Em Progresso, Concluído).
✅ Persistência de dados em banco de dados SQLite.
✅ Interface amigável com JavaFX.

## 📂 Estrutura do Projeto
```
📂 todo-list
│── 📂 src
│   │── 📂 model        # Classes de domínio (Task, User, etc.)
│   │── 📂 dao          # Classes de acesso ao banco de dados (JDBC)
│   │── 📂 service      # Lógica de negócios (CRUD de tarefas)
│   │── 📂 ui           # Interface gráfica (JavaFX)
│   │── 📂 util         # Utilitários e configurações
│── 📄 database.sql     # Script para criação do banco de dados
│── 📄 application.properties # Configuração do banco de dados
│── 📄 pom.xml / build.gradle  # Gerenciamento de dependências (Maven/Gradle)
│── 📄 README.md        # Documentação do projeto
```

## ⚙️ Configuração e Execução
### 1️⃣ Pré-requisitos
- Instalar [Java 11+](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- Instalar [Maven](https://maven.apache.org/install.html) ou [Gradle](https://gradle.org/install/)

### 2️⃣ Clonar o repositório
```bash
git clone https://github.com/VictorSantos674/Sistema-de-Gerenciamento-de-Tarefas-To-Do-List
cd todo-list-java
```

### 3️⃣ Configurar o banco de dados
Criar o banco de dados executando o script:
```sql
sqlite3 tasks.db < database.sql
```

### 4️⃣ Executar a aplicação com Maven
```bash
mvn clean javafx:run
```

### 5️⃣ Executar a aplicação com Gradle
```bash
gradle run
```

## 🏆 Contribuição
Sinta-se à vontade para contribuir! Você pode abrir uma issue ou enviar um pull request com melhorias.

## 📜 Licença
Este projeto é distribuído sob a licença MIT. Consulte o arquivo LICENSE para mais detalhes.

🚀 Desenvolvido com ❤️ por [Victor Santos](https://github.com/VictorSantos674?tab=overview&from=2025-02-01&to=2025-02-08)

