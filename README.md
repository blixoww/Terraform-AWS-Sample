<img align="right" src="https://raw.githubusercontent.com/hashicorp/terraform/main/website/docs/assets/terraform-logo.svg" width="180" alt="Terraform Logo">

# Infrastructure AWS complète avec Terraform  
**Décembre 2025**

[![Terraform](https://img.shields.io/badge/Terraform-1.9+-844FBA?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181714?style=for-the-badge&logo=github)](https://github.com/tonpseudo)

### Ce que ça déploie 

| Composant                       | Détails                                           |
|---------------------------------|---------------------------------------------------|
| VPC + subnet public             | eu-west-3 (Paris)                                 |
| Internet Gateway + Route Table  | Accès Internet complet                            |
| EC2 Amazon Linux 2023           | t3.micro + user_data (serveur web Apache)         |
| Application Load Balancer       | HTTP → HTTPS redirect automatique                 |
| Security Groups                 | SSH (22) + HTTP/HTTPS ouvert                      |
| IAM Role + Instance Profile     | Policy AmazonS3ReadOnlyAccess (least privilege)   |
| Bucket S3                       | Privé + ACL                                       |
| Clé SSH                         | Déployée via variable publique                    |

### Lancement
```bash
git clone https://github.com/blixoww/Terraform-AWS-Sample.git
terraform init
terraform apply -auto-approve
