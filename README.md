# Infrastructure as Code – Week 3 Opdrachten

## Inhoud

Deze repository bevat de week 3-opdracht voor Infrastructure as Code. In deze week worden Ansible-playbooks gecombineerd met een Terraform-inventarisbestand om geautomatiseerd configuratiebeheer toe te passen op meerdere virtuele machines.

---

##  Mappenstructuur

- `terraform/` – Bevat `inventory.tf`, waarin IP-adressen van VM’s worden geregistreerd
- `ansible/` – Bevat alle Ansible playbooks en rollen voor updates, gebruikersbeheer, back-ups en webserverconfiguratie
- `inventory.ini` – Ansible-inventory met VM-hostnamen, IP’s en groepsstructuur

---

##  Wat is er uitgevoerd?

- Terraform: Inventarisbestand voor Ansible gegenereerd
- Ansible: Playbooks geschreven en getest
- SSH-connectie via private key (`~/.ssh/skylab`)
- Groepsstructuur in inventory (webservers, db)
- Variabelen en handlers correct toegepast
- Webservers geïnstalleerd met Apache, PHP, PHP-MySQL
- Database geconfigureerd met `dbuser` / `dbpassword`

---

## Terraform Inventory

In `terraform/inventory.tf` wordt een lokale file gegenereerd met de IP’s van VM’s, bedoeld als Ansible inventory.

> Bestand: `terraform/inventory.tf`

Gebruik:
```bash
terraform init
terraform apply -auto-approve

Controleer daarna het bestand inventory.ini.


Ansible Playbooks
Playbooks bevinden zich in de map ansible/:

| Bestand                     | Beschrijving                                 |
| --------------------------- | -------------------------------------------- |
| `install_services.yml`      | Hoofdplaybook om web/db-rollen toe te passen |
| `playbooks/update.yml`      | Update alle systemen                         |
| `playbooks/add_user.yml`    | Voeg gebruiker toe                           |
| `playbooks/backup.yml`      | Backup specifieke directories                |
| `playbooks/copy_file.yml`   | Kopieert een bestand naar remote hosts       |
| `playbooks/hosts_entry.yml` | Voegt entries toe aan `/etc/hosts`           |

Rollen & Groepen
Voorbeeld van inventory.ini:

[webservers]
192.168.100.31
192.168.100.33

[dbservers]
192.168.100.32

Gebruik: ansible-playbook -i inventory.ini ansible/install_services.yml


Gebruikte Variabelen
Webserver installaties bevatten Apache, PHP en PHP-MySQL

Database login: dbuser / dbpassword (ingesteld via playbook)

Variabelen gedefinieerd via group_vars of vars blokken


Extra Screenshots
Zie PNG-bestanden in de hoofdmap voor bewijs van correcte werking:

Output van terraform apply

Resultaten van Ansible-playbooks

Webserverrespons

Hosts entries


Samenvatting
Terraform & Ansible correct gekoppeld
Gebruik van handlers, rollen en variabelen
Configuratie volledig geautomatiseerd
README bevat uitleg + instructies
