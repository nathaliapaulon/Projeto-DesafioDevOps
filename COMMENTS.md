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

27/04 - 08h42
Tentando alterar o pipeline, pois está retornando erro.




