Antes de iniciar tudo, peguei tudo o que está sendo pedido e pensei no que iria fazer e o que iria utilizar.
Como não tenho muita experiência, somente estudos/cursos, não tenho conhecimento de muitas formas de fazer esse passo a passo de um devops (plan, code, build, test, release e o deploy).

Obs: Para um projeto mais "limpo" vou evitar ficar utilizando muitos commits.

1 Automação da infra, provisionamento dos hosts (IaaS)

Aqui utilizarei EC2 via terraform, até o momento é a única forma que conheço de automação de infra.
Se não fosse necessário utilizar IaaS poderia utilizar AWS Beanstalk ou ECS com Fargate.

Para isso fiz o Dockerfile e buildei a imagem para o DockerHub e farei a configuração em cima dessa imagem.

2 Automação de setup e configuração dos hosts (IaC)

Aqui única ferramenta que conheço no momento e que pode fazer o que está sendo pedido é o Ansible.

3 Pipeline de deploy automatizado

Aqui poderia utilizar gitlab, github actions, jenkins, mas até o momento tenho conhecimento suficiente para utilizar gitlab.

4 Monitoramento dos serviços e métricas da aplicação

Aqui poderia utilizar o próprio AWS Cloudwatch, mas também Prometheus com Grafana, estou pensando qual opção irei utilizar.
Tenho mais conhecimento em AWS Cloudwatch, Grafana já trabalhei, mas já estava todo configurado, prometheus tenho um curso básico.



26/03 - 23h24
Testes iniciados com o terraform pronto, localmente utilizando o terraform init, terraform plan está funcionando.

26/03 - 23h49
Tentando rodar o pipeline, mas retornando erro, tentando testar somente o terraform, sem o ansible para verificar se roda corretamente.

27/03 - 08h42
Tentando alterar o pipeline, pois está retornando erro.

27/03 - 17h28
Mudei algumas coisas no arquivo de pipeline. Mudei o dockerfile, pois antes estava dando erro. Fiz uns testes locais e agora está ok.
Agora preciso ajustar tudo pro pipeline funcionar, visto que não tenho muito conhecimento de ansible e também na hora de integrar tudo um pouco de dificuldades, visto que estudei as ferramentas separadamente, na hora de utilizar tudo junto é um pouco complexo para mim.

27/03 - 18h44
No pipeline está retornando um erro no momento do terraform, tentando resolver adicionando uma linha após "image"

27/03 - 22h17
Estou tentando editar o arquivo do pipeline, pois na hora do terraform está dando erro nas variáveis, tentando ajustar para dar certo.

27/03 - 22h33
Ainda na tentativa de arrumar o pipeline que continua dando erro no terraform nas variáveis.

27/03 - 23h50
Consegui fazer o pipeline funcionar, passou da parte das variáveis, concluiu o pipeline com sucesso, mas depois na parte do ansible ele não conseguiu localizar o ip do host que foi criado pelo terraform e não fez a configuração necessária da api no host.

28/03 - 17h48
Como não estou conseguindo via pipeline funcionar a configuração do host via ansible. Vou tirar a parte do ansible e fazer separado provavelmente. Infelizmente tenho pouco conhecimento em ansible no geral. Nunca tinha precisado utilizar.

28/03 - 19h10
Tirei o ansible do pipeline e vou tentar executar o ansible separadamente, menos automatizado, mas como não estou conseguindo no pipeline por falta de conhecimento, vai ser a única forma.



