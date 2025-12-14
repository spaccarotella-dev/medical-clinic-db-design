# Medical Clinic – Relational Database Design


# Project overview
This project focuses on the design of a relational database for a private medical clinic.
The goal is to model entities, relationships, and constraints based on real-world requirements.

# Requirements
- Manage doctors and patients
- Schedule medical visits
- Track payments
- Assign visits to medical offices

# Entities
- Medici
- Pazienti
- Visite
- Pagamenti
- Ambulatori

# Relationships
- Medico → Visite (1:N)
- Paziente → Visite (1:N)
- Visita → Pagamento (1:0/1)
- Ambulatorio → Visite (1:N)

# Technologies
- MySQL
- SQL (DDL)

# Notes
This project focuses on database design and schema definition.
Queries and advanced features are intentionally excluded.
