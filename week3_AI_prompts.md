# AI Prompts & Antwoorden – Week3 Ai Prompts.Md

**Vraag 1:** Vraag

**Antwoord 1:** Hoe genereer ik een Ansible-inventory bestand automatisch vanuit Terraform?

---

**Vraag 2:** Antwoord

**Antwoord 2:** Gebruik een `local_file` resource in Terraform om een bestand te genereren met hostnamen/IP’s in INI-vorm.

---

**Vraag 3:** Vraag

**Antwoord 3:** Hoe schrijf ik een Ansible-playbook dat een back-up maakt van /etc en /var/www en een cronjob instelt?

---

**Vraag 4:** Antwoord

**Antwoord 4:** Gebruik de modules `copy`, `cron` en `archive` binnen je playbook. Je kunt `cron` gebruiken om dagelijks een script of Ansible-playbook aan te roepen.

---

**Vraag 5:** Vraag

**Antwoord 5:** Hoe voeg ik een regel toe aan /etc/hosts met Ansible?

---

**Vraag 6:** Antwoord

**Antwoord 6:** Gebruik de `lineinfile` module met het juiste pad en de contentregel.

---

