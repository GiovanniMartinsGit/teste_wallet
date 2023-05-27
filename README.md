# README

# Documentação da Aplicação da Carteira Virtual

Esta documentação descreve os passos de instalação, configuração e funcionalidades da aplicação da carteira virtual desenvolvida em Ruby on Rails.

# Instalação
Siga os passos abaixo para configurar e executar a aplicação da carteira virtual:

Certifique-se de ter o Ruby e o Rails instalados na sua máquina.

Faça o download ou clone o repositório do projeto da carteira virtual.

No terminal, navegue até o diretório do projeto.

Execute o comando bundle install para instalar as dependências do projeto.

Execute o comando rails db:migrate para executar as migrações do banco de dados.

Opcionalmente, execute o comando rails db:seed para preencher o banco de dados com alguns 
usuários de exemplo.

Execute o comando rails server para iniciar o servidor Rails.

Acesse http://localhost:3000 no seu navegador para utilizar a aplicação.

# Funcionalidades

A aplicação da carteira virtual possui as seguintes funcionalidades:

Listar Usuários:

A página inicial lista todos os usuários cadastrados na forma de uma tabela.

Cada linha da tabela exibe o nome e o saldo atual da carteira virtual do usuário.

Ao lado de cada usuário, há links para visualizar os detalhes, editar e excluir o usuário.

Adicionar um Novo Usuário:

Na página inicial, clique no link "Adicionar Novo Usuário".

Preencha o formulário com o nome e o saldo inicial da carteira virtual do usuário.

Clique no botão "Criar Usuário" para adicionar o novo usuário.

O usuário será adicionado à lista e seu saldo será exibido na tabela.

Editar um Usuário Existente:

Na página inicial, clique no link "Editar" ao lado do usuário que deseja modificar.

Atualize as informações desejadas no formulário.

Clique no botão "Atualizar Usuário" para salvar as alterações.

O usuário será atualizado e as informações atualizadas serão exibidas na tabela.

Mostrar os Detalhes do Usuário:

Na página inicial, clique no link "Detalhes" ao lado do usuário cujos detalhes deseja visualizar.

Será exibida uma página com as informações detalhadas do usuário, incluindo o nome e o saldo 
atual da carteira virtual.

Além disso, serão exibidas as entradas da carteira virtual ordenadas por data e hora, mostrando a 
data e o valor de cada entrada.

Creditar ou Debitar Dinheiro na Carteira Virtual do Usuário:

Na página de detalhes do usuário, cada entrada da carteira virtual exibirá links "Crédito" e "Débito".
Clique no link "Crédito" para creditar dinheiro na carteira virtual do usuário.
Clique no link "Débito" para debitar dinheiro da carteira virtual do usuário.
Um valor de crédito ou débito pode ser selecionado a partir das entradas existentes na carteira virtual.
O saldo do usuário será atualizado de acordo com a operação realizada.
Recuperar o Saldo Atual da Carteira Virtual do Usuário (API):

A aplicação também fornece uma API para recuperar o saldo atual da carteira virtual do usuário.

Os endpoints da API são:

POST /api/wallet/:id/credit - Realiza uma operação de crédito na carteira virtual do usuário.
POST /api/wallet/:id/debit - Realiza uma operação de débito na carteira virtual do usuário.
GET /api/wallet/:id/balance - Recupera o saldo atual da carteira virtual do usuário.
Consulte a seção anterior "Documentação da API da Carteira Virtual" para obter detalhes sobre como usar esses endpoints.

