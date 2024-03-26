# AWS-ARQUITETURA

=======


Usando diagrama feito na drawio criamos essa arquitetura (onde foi criado um codigo no terraform exemplo)

![Arquitetura AWS](https://github.com/Lopeswaprojetos/aws-arquitetura/assets/161225187/db855d9b-720a-43e2-9437-da55046660eb)


Abaixo os serviços que foram usados:

AWS VPC (Virtual Private Cloud):
Permite criar uma rede virtual na AWS isolada logicamente do restante da nuvem, onde você pode lançar recursos da AWS.

AWS Subnet:
São segmentos da sua VPC onde você pode colocar grupos de recursos de forma lógica.

AWS Internet Gateway:
Fornece conectividade entre sua VPC e a internet, permitindo que os recursos dentro da VPC acessem a internet e vice-versa.

AWS VPC :
Anexa um Internet Gateway à sua VPC, permitindo o tráfego de internet dentro da VPC.

AWS ELB (Elastic Load Balancer):
Distribui o tráfego de entrada entre várias instâncias EC2 em múltiplas zonas de disponibilidade, ajudando a garantir a alta disponibilidade e a tolerância a falhas do aplicativo.

AWS EC2 :
É uma configuração que especifica os parâmetros das instâncias EC2 quando são iniciadas automaticamente como parte de um grupo de auto dimensionamento.

AWS Autoscaling Group:
Permite ajustar automaticamente o número de instâncias EC2 em execução com base nas condições definidas, como a demanda de tráfego.

AWS NAT Gateway (Network Address Translation Gateway):
Permite que as instâncias EC2 em uma subnet privada acessem a internet de forma segura, redirecionando o tráfego de saída através dele.

AWS S3 Bucket (Simple Storage Service Bucket):
É um serviço de armazenamento de objetos na nuvem, onde você pode armazenar e recuperar qualquer quantidade de dados de qualquer lugar da web.

AWS Route 53 Zone:
É um serviço de DNS da Amazon que fornece resolução de DNS e registro de domínios.

AWS CloudFront Distribution:
É um serviço de entrega de conteúdo (CDN) que entrega dados, vídeos, aplicativos e APIs de maneira segura e com baixa latência para os clientes globais.

AWS WAF (Web Application Firewall) Web ACL (Access Control List):
Protege suas aplicações web contra ataques comuns da web, como SQL injection e cross-site scripting (XSS).

AWS VPC Endpoint:
Permite conexões privadas entre sua VPC e outros serviços AWS sem exigir uma gateway da Internet, NAT, VPN ou conexão de dados dedicada.

AWS CloudWatch:
Monitora uma métrica específica do CloudWatch e dispara uma ação quando a condição da alarme é atendida.
