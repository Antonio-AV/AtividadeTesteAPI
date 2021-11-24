# AtividadeTesteAPI
Repositório para a entrega do exercício de S206 sobre teste de API.

Nome: Antônio Victor Mendes Fonseca

Curso: GES

Matrícula: 109

Link para o site utilizado: https://fakerestapi.azurewebsites.net/

Utilizei o site Fake Rest API para a realização dos testes solicitados. O site trata-se de uma Fake API como o próprio nome diz, criado justamente para a realização de testes de API. 

 - Primeiro caso de Teste: Utilizar da função GET para verificar se o retorno é em formato de vetor e se os formatos de pageCount (number) e title (String) estão corretos. (TESTE POSITIVO).

 - Segundo caso de teste: Utilizar da função POST para adicionar um novo autor e verificar se ele foi inserido corretamente. (TESTE POSITIVO).

 - Terceiro caso de teste: Utilizar da função POST para criar uma nova atividade (causará erro devido a um erro no preenchimento do Json). (TESTE NEGATIVO).

 - Quarto caso de teste: Utilizando da função PUT para atualizar as informações da foto de capa de id 5 e verificando as novas informações. (TESTE POSITIVO).

 - Quinto caso de teste:Utilizando da função GET para ver se o tamanho do objeto 1 de User é igual a 4 (causará erro devido a ao tamanho do objeto/response). (TESTE NEGATIVO).

 - Sexto caso de teste:Utilizando da função DELETE para excluir o livro de ID = 3. (TESTE POSITIVO).

Para executar o projeto basta realizar a cópia do repositório para sua máquina, utilizar o comando mvn clean install para instalar as dependencias do projeto, acessá-lo utilizando o GIT BASH ou outra ferramenta similar, e utilizar o comando mvn test –Dtest=ApiRunner para realizar os códigos.

Já o relatório HTML é gerado automaticamente após a execução dos testes, basta abrir o link gerado no prompt.


QUESTÂO 2 - 

1. Foi criado apenas uma suíte de testes, representada no código pela api.feature, contendo todos os casos de teste.

2. Os testes desenvolvidos são automatizados, uma vez que nós somos os responsáveis por desenvolver o teste, mas a própria máquina é quem executa o teste automático no fim das contas.

3. Os testes realizados correspondem aos testes unitários, uma vez que visam garantir que os módulos que compõem o sistema estejam funcionando separadamente de acordo com as especificações.

4. Os testes realizados são funcionais, uma vez que visam confirmar o que o usuário espera ao utilizar o sistema, e não a eficiência do sistema que é o foco dos testes não funcionais.

5. Sim, levando em conta que o objetivo destes testes é justamente verificar se o fluxo dos dados está dentro do esperado, todos eles podem ser considerados testes end-to-end.

6. Para serem considerados testes de regressão eles devem executar todas as suítes de teste criados e testados anteriormente, pois assim se encontrarem algum erro novo, esse erro se encontra nas mudanças feitas entre a ultima vez que os testes foram realizados e atualmente. 

