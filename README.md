# Boas Práticas para Uso do AWS Provider com Terraform

Este repositório contém um resumo das recomendações prescritivas publicadas pela AWS para a utilização do Terraform com o provider `aws`. O objetivo é garantir segurança, performance e facilidade de manutenção na infraestrutura como código.

## 📌 Regras Gerais

- **Evite hardcode de credenciais**
  Utilize perfis de autenticação locais (`~/.aws/credentials`), variáveis de ambiente ou `assume_role`. Nunca salve `access_key` e `secret_key` diretamente nos arquivos `.tf`.

- **Use um provider por módulo**
  Cada módulo deve declarar seu próprio `provider` com os parâmetros necessários. Isso garante isolamento, reutilização e independência dos módulos.

- **Configure aliases para múltiplas contas ou regiões**
  Quando precisar trabalhar com múltiplas contas ou regiões, defina `alias` nos providers e passe os aliases aos módulos. Isso ajuda a manter a organização e clareza do código.

- **Use assume_role com perfis seguros**
  Configure `assume_role` no provider para trocar de conta com base em uma role pré-configurada. Ideal para ambientes multi-conta com controle centralizado.

- **Centralize variáveis do provider no bloco locals**
  Padronize o uso de variáveis como região, perfil e alias dentro de um bloco `locals {}` no módulo principal. Isso reduz duplicidade e facilita a manutenção.

## 📄 Documento oficial da AWS

Guia completo (em português):  
https://docs.aws.amazon.com/pt_br/prescriptive-guidance/latest/terraform-aws-provider-best-practices/terraform-aws-provider-best-practices.pdf

---

Aplicar essas práticas aumenta a qualidade, escalabilidade e segurança da sua infraestrutura como código.

#Terraform #AWS #IaC #DevOps #AWSProvider #MelhoresPraticas
