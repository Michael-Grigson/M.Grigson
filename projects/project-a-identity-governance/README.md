# 📁 Project A — Azure Identity \& Governance Foundation  

📂 Location: `/projects/project-a-identity-governance`  

📊 Status: 🟩 Complete  



---



## 📖 Overview



This project implements a secure identity and governance baseline in Microsoft Entra ID and Azure.



It replaces default security controls with a structured, enterprise-aligned model covering:



- Conditional Access enforcement (MFA and legacy authentication blocking)  

- Group-based RBAC for scalable access control  

- Management group hierarchy for governance inheritance  

- Azure Policy for tagging enforcement and remediation  

- Break-glass account strategy for tenant recovery  



All controls were deployed using a staged approach (report-only to enforced) and validated through platform logging.



The design aligns to Zero Trust principles, least privilege access, and operational resilience.



---


## 🎯 Scenario



An organisation requires a secure cloud foundation that ensures:



- Strong authentication across all identities  

- Controlled administrative access  

- Consistent governance of deployed resources  

- Protection against misconfiguration and accidental deletion  

- A recovery path in the event of identity control failure  



---



## 🏗 Architecture Model



### Identity and Access Flow



```

User / Administrator

   ↓

Microsoft Entra ID Authentication

   ↓

Conditional Access Policies

   - MFA Enforcement

   - Legacy Authentication Block

   ↓

Access Token Issued

   ↓

RBAC Evaluation

   - Group Membership

   - Role Assignments

   ↓

Resource Access

```



---



### Governance Enforcement Flow



```

Management Group

   ↓

Subscription

   ↓

Azure Policy

   - Tag Enforcement

   - Tag Inheritance

   ↓

Resource Deployment

   ↓

Compliance Evaluation

```



---



### Protection Layer



- Resource Locks prevent deletion of critical resources  

- Break-glass accounts provide controlled bypass of Conditional Access  



---



## 🔧 Implementation



### 1. Identity Configuration (Microsoft Entra ID)



- Created internal users and external guest users  

- Implemented security groups for role-based access  

- Adopted group-based access model for scalability  



**Outcome**



- Centralised identity management  

- Reduced administrative overhead through group assignment  



---



### 2. Conditional Access Enforcement



Implemented staged deployment of Conditional Access policies:



- **CA01 - Require MFA for All Users**

- **CA02 - Require MFA for Admin Roles**

- **CA03 - Block Legacy Authentication**



Deployment approach:



- Policies initially deployed in report-only mode  

- Validated using sign-in logs  

- Transitioned to enforced state after validation  



**Outcome**



- Strong authentication enforced across all identities  

- Legacy authentication attack surface removed  

- Reduced risk of tenant lockout during rollout  



---



### 3. Identity Enforcement Architecture



Multiple identity control layers were implemented and evaluated:



- Conditional Access  

- MFA Registration Campaign  

- Self-Service Password Reset (SSPR)  

- Authentication Methods Policy  



**Key Design Decision**



- Replaced broad “All Users” targeting with group-based scoping  



**Outcome**



- Clean exclusion model for break-glass accounts  

- Avoided policy conflicts and unintended lockouts  



---



### 4. Access Control (RBAC)



- Role assignments scoped at resource level  

- Access granted via security groups, not individual users  

- Separation between user roles and administrative roles  



**Outcome**



- Enforced least privilege access model  

- Improved scalability and maintainability  



---



### 5. Governance via Azure Policy



- Enforced required tagging on resources  

- Configured tag inheritance from resource groups  

- Applied remediation for non-compliant resources  



**Outcome**



- Standardised tagging across environment  

- Prevented non-compliant deployments  



---



### 6. Resource Protection



- Applied resource locks at resource group level  



**Outcome**



- Prevented accidental deletion of critical resources  

- Ensured infrastructure stability  



---



### 7. Break-Glass Strategy



- Created three emergency access accounts  

- Excluded from Conditional Access policies  

- Secured using strong authentication methods  



**Outcome**



- Maintained tenant recovery capability  

- Reduced risk of administrative lockout  



---



## ✅ Validation and Testing



- Conditional Access validated via report-only mode and sign-in logs  

- RBAC validated through role testing and activity logs  

- Policy enforcement tested with failed and remediated deployments  

- Resource locks validated via deletion attempts  



---



## 🧠 Key Design Decisions



- Group-based RBAC instead of user-based assignment  

- Report-only deployment of Conditional Access  

- Layered identity controls to avoid conflicts  

- Early governance enforcement  

- Break-glass accounts for resilience  



---



## 📊 Skills Demonstrated



- Identity and access management design  

- Conditional Access implementation  

- RBAC modelling  

- Azure Policy governance  

- Cloud security principles  



---



## 📚 Key Learnings



- Conditional Access should always be staged  

- Policy enforcement delay impacts validation  

- Identity control layers require careful design  

- Governance must be enforced, not documented  

- Resource locks override RBAC  



---



## 🔍 Strategic Assessment



### Strengths



- Identity-first security model aligned to Zero Trust  

- Strong Conditional Access implementation  

- Scalable RBAC design  

- Effective governance enforcement  



### Priority Improvements



- Implement Privileged Identity Management (PIM)  

- Expand Conditional Access (device, location, risk)  

- Move policy to Management Group scope  

- Introduce identity lifecycle controls  



---



## 🚀 Next Steps



- Integrate monitoring and alerting  

- Expand governance to landing zone architecture  

- Align with Defender for Cloud  



