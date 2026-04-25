# 🛡️ M365 and Azure Cloud Engineer Portfolio

## M365 • Cloud Engineering • Identity and Access

![Azure](https://img.shields.io/badge/Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![M365](https://img.shields.io/badge/M365-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![MS-102](https://img.shields.io/badge/MS--102-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Security](https://img.shields.io/badge/Security-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=red)
![SC-300](https://img.shields.io/badge/SC--300-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=red)
![MD-102](https://img.shields.io/badge/MD--102-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)

---

Hi! I'm **Michael**. I am a Senior Endpoint and Security Engineer working across Microsoft 365, specialising in endpoint management, identity, and access control within hybrid environments.
I am continuing to develop my capabilities across Microsoft 365 and Azure cloud engineering, with a focused interest in security, identity, and access governance.

This portfolio showcases practical implementations of:

- Identity and access management  
- Governance and compliance  
- Infrastructure as Code  
- Virtual networking  
- Compute and scaling  
- Storage solutions  
- Web and container workloads  
- Monitoring and alerting  
- Backup and disaster recovery  

---

## 🎓 Certifications

| Certification | Skills Assessed |
|--------------|-------------------|
| **Microsoft 365 Certified: Administrator Expert - MS-102** | Implement and manage user identities, Implement authentication and access management, Plan and implement workload identities, Plan and implement identity governance |
| **Microsoft Certified: Identity and Access Administrator Associate - SC-300** | Implement and manage user identities, Implement authentication and access management, Plan and implement workload identities, Plan and implement identity governance |
| **Microsoft 365 Certified: Endpoint Administrator Associate - MD-102** | Prepare infrastructure for devices, Manage and maintain devices, Manage applications, Protect devices |
| **Microsoft Certified: Azure Fundamentals - AZ-900** | Describe cloud concepts, Describe Azure architecture and services, Describe Azure management and governance |

---

## 🏅 Microsoft Certified: Applied Skills

| Applied Skill | Skills Demonstrated |
|--------------|-------------------|
| **Microsoft Applied Skills: Implement information protection and data loss prevention by using Microsoft Purview** | Implemented data protection controls in Microsoft Purview, including custom sensitive information types, sensitivity labels, auto-labelling, and Data Loss Prevention (DLP) policies. |
| **Microsoft Applied Skills: Implement retention, eDiscovery, and Communication Compliance in Microsoft Purview** | Configured and managed data governance and compliance controls in Microsoft Purview, including retention policies, eDiscovery (Premium), Communication Compliance, and content search for investigation and monitoring. |
| **Microsoft Applied Skills: Get started with identities and access using Microsoft Entra** | Configured core identity and access controls in Microsoft Entra ID, including user and group management, MFA, SSPR, password protection, and Conditional Access policies aligned to Zero Trust principles. |

---

## 🛠 Technical Skills

| Area | Technologies |
|------|-------------|
| ☁️ Cloud Platforms | Microsoft Azure, Microsoft Entra ID, Microsoft 365 |
| 🌍 Cloud Concepts | High Availability, Scalability, Fault Tolerance, Cost Management |
| 🔐 Identity & Access | Entra ID, RBAC, Conditional Access, PIM, Identity Protection |
| 🧭 Identity Governance | Access Reviews, Entitlement Management |
| 💻 Endpoint | Intune, Autopilot, BitLocker |
| 🛡 Security | Defender Suite, Defender for Cloud |
| 🏢 M365 | Exchange, SharePoint, Teams, OneDrive |
| 📜 Governance | Azure Policy, Tags, Locks, Purview |
| 🖥 Compute | Virtual Machines, VM Scale Sets |
| 🌐 Networking | VNets, NSGs, DNS, Peering, Load Balancer |
| 💾 Storage | Blob, File Shares, SAS |
| 🚀 Web & Containers | App Services, ACI, Container Apps |
| 📊 Monitoring | Azure Monitor, Log Analytics |
| 🔎 Detection | KQL |
| 🔁 DR | Azure Backup, Site Recovery |
| ⚙️ Automation | PowerShell, Azure CLI, ARM, Bicep |

---

## 📁 Projects

---

### 📁 Project A — Azure Identity & Governance Foundation  
📂 Location: `/projects/project-a-identity-governance`  
📊 Status: 🟨 Planned 

Identity, RBAC, and governance implementation.

**Core Components**
- Entra ID users and groups  
- RBAC assignments  
- Azure Policy  
- Resource locks  

**Skills**
- Identity design  
- Governance implementation  

---

### 📁 Project B — Azure Network Architecture & Connectivity  
📂 Location: `/projects/project-b-networking`  
📊 Status: 🟨 Planned  

Secure segmented networking.

**Core Components**
- VNets and subnets  
- NSGs  
- Peering  
- DNS  

**Skills**
- Network design  
- Routing and security  

---

### 📁 Project C — Azure Compute, Storage & Scaling  
📂 Location: `/projects/project-c-compute-storage`  
📊 Status: 🟨 Planned 

Compute and storage deployment.

**Core Components**
- Virtual Machines  
- VM Scale Sets  
- Storage  

**Skills**
- VM management  
- Scaling strategies  

---

### 📁 Project D — Monitoring, Backup & Resilience  
📂 Location: `/projects/project-d-monitoring-backup`  
📊 Status: 🟨 Planned 

Monitoring and disaster recovery.

**Core Components**
- Azure Monitor  
- Log Analytics  
- Backup  
- Site Recovery  

**Skills**
- Monitoring  
- DR planning  

---

### 📁 Project E — Secure Azure Enterprise Environment (Flagship)  
📂 Location: `/projects/project-e-secure-enterprise`  
📊 Status: 🟨 Planned 

End-to-end Azure architecture combining identity, networking, compute, and monitoring.

**Core Components**
- Entra ID with RBAC and PIM  
- Segmented VNets and NSGs  
- Virtual Machines (no public IPs)  
- Storage with controlled access  
- Azure Monitor and Log Analytics  
- Backup and Site Recovery  

**Architecture Diagram**

```mermaid
flowchart TD
    Admin[Administrator]

    subgraph identity_layer["Identity Layer"]
        entra_id["Microsoft Entra ID"]
        rbac["RBAC"]
        pim["Privileged Identity Management"]
        ca["Conditional Access"]
    end

    subgraph network_layer["Network Layer"]
        vnet["Segmented Virtual Network"]
        mgmt_subnet["Management Subnet"]
        app_subnet["Application Subnet"]
        log_subnet["Logging Subnet"]
        nsg["Network Security Groups"]
        dns["Private DNS"]
    end

    subgraph compute_layer["Compute Layer"]
        win_vm["Windows Server VM"]
        linux_vm["Ubuntu Linux VM"]
        vmss["Virtual Machine Scale Set"]
    end

    subgraph storage_layer["Storage Layer"]
        storage_account["Storage Account"]
        blob_storage["Blob Storage"]
        file_share["Azure File Share"]
        sas["Shared Access Signature"]
    end

    subgraph monitoring_layer["Monitoring Layer"]
        ama["Azure Monitor Agent"]
        law["Log Analytics Workspace"]
        monitor["Azure Monitor"]
        alerts["Alerts and Action Groups"]
    end

    subgraph resilience_layer["Backup and DR Layer"]
        vault["Recovery Services Vault"]
        backup["Azure Backup"]
        asr["Azure Site Recovery"]
    end

    Admin --> ca
    ca --> entra_id
    entra_id --> rbac
    rbac --> pim
    pim --> vnet

    vnet --> mgmt_subnet
    vnet --> app_subnet
    vnet --> log_subnet
    vnet --> nsg
    vnet --> dns

    mgmt_subnet --> win_vm
    mgmt_subnet --> linux_vm
    app_subnet --> vmss

    win_vm --> ama
    linux_vm --> ama
    vmss --> ama

    ama --> law
    law --> monitor
    monitor --> alerts

    app_subnet --> storage_account
    storage_account --> blob_storage
    storage_account --> file_share
    storage_account --> sas

    win_vm --> backup
    linux_vm --> backup
    backup --> vault
    vault --> asr
