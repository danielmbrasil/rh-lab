# Desafio da semana

## Seeds

Escrever um arquivo de seeds para inicializar o DB com dados.

## Index de employee

Exibir os campos faltantes da tabela

- Matrícula (registration) ativa
- Departamento ativo

## Show de employee

Exibir os campos faltantes

- Lista de projetos que o funcionário faz parte, ordenada pelos início mais recente

## Show de department

Exibir os campos faltantes

- Lista de funcionários ativos

## Dashboard

Implementar a página de Dashboard, que mostra algumas estatísticas da aplicação.

- Average salary: média salarial de cada position
- Overbudget project: lista contendo 5 projetos que já estouraram o orçamento, ordenados do que parrou mais para o que
  passou menos do limite
- Active employees: Lista que exibe o número de funcionários **ativos** em cada departamnto.
- Employees by manager: Lista contendo o nome do gerente e o seu número de subordinados.

# Critérios & Dicas

- Você deve buscar reduzir o número de consultas ao banco e fazê-las da forma mais eficiente que conseguir.
- Use boas práticas de organização e reuso das consultas.
- Crie ou alterem as associações existentes, caso precisem.
- Não há necessidade de adicionar nenhuma coluna às tabelas.
- Evite colocar código nos controllers que não deveriam estar lá.
- Escreva testes.
- Não deixe pra tirar dúvidas só no final da semana.
- Rode o projeto com `./bin/dev`.
