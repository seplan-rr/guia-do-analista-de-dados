# Extração

A etapa de extração de dados envolve buscar os dados brutos diretamente de suas fontes, podendo agregá-los em uma área intermediária para a etapa de transformação. Ela pode ser realizada de diversas formas diferentes, mas nós lidamos primariamente com *[web scraping]()* e [arquivos estruturados]() compartilhados dentro da organização.

Note que, quando falamos de área intermediária, se refere a qualquer lugar onde o dado é armazenado temporariamente para que possa ser transformado. Alguns exemplos são: em memória, banco de dados (local ou remoto) e sistema de arquivos.

A extração pode ser categorizada como:

- [Notificação](#notificação)
- [Gradual](#gradual)
- [Completa](#completa)

## Notificação

A extração visando a notificação é a mais simples forma de extração de dados. Ela apenas verifica se houve uma atualização dos dados brutos na fonte e envia uma alerta para um sistema de notificações. Também é possível configurar algumas fontes para que elas enviem essa notificação de forma automática.

Esse tipo de extração é interessante por consumir bem menos recursos, já que geralmente não é necessário interagir com a área intermediária nela.

**Exemplos**

- Conexão via *[webhook](https://rockcontent.com/br/blog/o-que-e-um-webhook/)* à fonte para receber alertas automaticamente
- Assinatura em uma *[newsletter](https://en.wikipedia.org/wiki/Newsletter)* que anuncie quando houverem atualizações dos dados
- Leitura periódica à fonte de dados para verificar se houveram alterações (geralmente via *[crawler](https://www.cloudflare.com/pt-br/learning/bots/what-is-a-web-crawler/)*)
