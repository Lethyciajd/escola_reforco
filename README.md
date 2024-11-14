# Sistema de Reforço Escolar

Este é um projeto de **reforço escolar** desenvolvido com **front-end** em **HTML**, **CSS** e **Bootstrap**, e **back-end** utilizando **PHP** e **MySQL**. O objetivo do sistema é gerenciar dados relacionados ao reforço escolar, como cadastro de alunos, turmas, professores e outras informações essenciais.

## Tecnologias Utilizadas

- **Front-end**: HTML, CSS, Bootstrap
- **Back-end**: PHP
- **Banco de Dados**: MySQL

## Requisitos

Antes de rodar o projeto, certifique-se de ter o seguinte instalado:

- [XAMPP](https://www.apachefriends.org/pt_br/index.html) (Apache e MySQL)
- Navegador de internet (como Google Chrome, Firefox, etc.)

## Instruções de Instalação

1. **Instalar o XAMPP**

   Baixe e instale o [XAMPP](https://www.apachefriends.org/pt_br/index.html), que inclui o Apache (para rodar o PHP) e o MySQL (para o banco de dados).

2. **Clonar o Repositório**

   Clone este repositório para o seu ambiente local utilizando o Git:

   ```bash
   git clone https://github.com/seu-usuario/nome-do-repositorio.git

3. **Baixando como ZIP:**
Se preferir, você pode baixar o projeto como um arquivo ZIP:

Acesse a página do projeto no GitHub.
Clique no botão Code e depois em Download ZIP.
Extraia o conteúdo do arquivo ZIP em uma pasta de sua escolha.
2. Mover a Pasta para o Diretório do XAMPP
Depois de baixar o projeto, você precisa mover a pasta do projeto para o diretório htdocs do XAMPP. O diretório htdocs é onde o Apache (do XAMPP) vai procurar os arquivos para rodar o sistema.

4. **O diretório htdocs normalmente está localizado em:**

Windows: C:\xampp\htdocs\
Linux/Mac: /opt/lampp/htdocs/

5. **Por exemplo, se o nome do seu projeto for escola-reforco, mova a pasta para:**

C:\xampp\htdocs\escola-reforco\
6. **Configurar o Banco de Dados**
Agora, você precisa configurar o banco de dados no MySQL para o sistema funcionar corretamente.

7. **Passo a Passo:**

Abra o painel de controle do XAMPP e inicie o Apache e o MySQL.

Abra o phpMyAdmin digitando http://localhost/phpmyadmin/ na barra de endereços do seu navegador.

No phpMyAdmin, clique em Novo para criar um novo banco de dados.

Nomeie o banco de dados como escola_reforco (ou qualquer outro nome, se preferir).

Importe o arquivo SQL para criar as tabelas do banco de dados:

No phpMyAdmin, selecione o banco de dados escola_reforco que você acabou de criar.

Clique na aba Importar.

Selecione o arquivo Banco_escola_reforco.sql que está incluído no projeto e clique em Executar.
