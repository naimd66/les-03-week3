# Week 3 - Ansible en Terraform integratie

## Inhoud
In deze week is een combinatie gemaakt van Terraform (voor VM-deployment) en Ansible (voor configuratie).

### Deployments
- 3 VM's: 2 webservers en 1 database server
- SSH-key is gebruikt via cloud-init configuratie

### Ansible
- Inventory automatisch gegenereerd door Terraform
- Playbooks voor:
  - updates uitvoeren
  - aanpassen van /etc/hosts
  - aanmaken van gebruiker `test`
  - kopiëren van bestanden
  - backup taken + cronjob

### Bronnen
- Documentatie Ansible en Terraform
- AI-output en prompts in `ai_prompts_week3.md`
