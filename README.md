🚀 Projeto: ToDo List Completa com Rails 8
🔥 Stack:
Ruby on Rails 8 (padrão Hotwire + Turbo + Stimulus)

PostgreSQL (banco de dados)

TailwindCSS (estilo moderno)

Simple Form (formulários rápidos)

Devise (autenticação)

Kaminari (paginação)

Rspec + FactoryBot + Faker (testes automatizados)

dotenv-rails (variáveis de ambiente .env)

FontAwesome (ícones)

Radial Box (tipo checkbox bonito)

VSCode (editor)

GitHub (repositório)

Partials e Helpers (código limpo e reaproveitado)

Sugestões de outras gems:

annotate (comentar models com colunas do banco)

bullet (descobrir queries N+1 no dev)

rubocop-rails (padronizar o código)

🚀 Projeto com descrições mais detalhadas a seguir:

Fiz uma aplicação ruby on rails todo-list, utilizando o ChatGPT, tailwind, postgresql, javascript, no caso ferramentas como o hotwire, stimulus e outra que já vem no Rails 8, para que na mesma página selecionar utilizando uma coleção itens de uma lista de tarefas para fazer, quero botões estilizados inclusive com ícones, quero um logotipo simples, quero que popule meu sistema utilizando seed, quero utilizar o simple-form, quero aprender a trabalhar com variáveis de ambiente para que eu não precise escrever meu username e password no meu projeto ao configurar, usar o kaminari, o devise, e quero que me sugira outras gens, passo a passo de como configurar, instalar e rodar os comandos de criação, de testes automatizados com o Rspec, quero telas amigáveis e intuitivas para usuários da aplicação, quero que utiliza partials para reaproveitamento de código, quero um passo a passo para gerir um repósitório github desse projeto, quero utilizar radial box para selecionar as tarefas e itens feitos, quero cores e aparencia do Windows, quero no futuro poder escalar esse pequeno projeto web, utiliza as boas práticas na programação, sugira gens, configuração e instalação de biblioteca que deixa meu sistema performático, quero em Português do Brasil, comentários e sugestões para resolver bugs e gargalos que aconteçam durante o meu desenvolvimento do código no Vscode, quero que desenha e explica a modelagem das tabelas bem como o fluxo de dados, quero que seja meu professor de programação focado na prática a fim de eu exercitar a lógica, a sintaxe da linguagem Ruby, a adapção do template sugerido, o ajuste dos exemplos de testes automatizados para essa atividade em geral. 

Modelagem do Banco
🛠️ Modelos:
User (padrão devise)

TaskList (lista de tarefas)

title:string

user:references

TaskItem (item dentro da lista)

description:string

done:boolean

task_list:references

Fluxo:

Um User cria várias TaskLists.

Cada TaskList possui vários TaskItems.
