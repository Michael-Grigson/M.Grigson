# 📁 Project C - Azure Compute, Storage & Scaling  
📊 **Status:** 🟨 In Progress  

---

## 📖 Overview  

This project implements Azure compute, storage, and application hosting services to support scalable and secure workload deployment.

It focuses on practical workload decisions across IaaS, PaaS, and container-based platforms, including compute sizing, storage configuration, access control, scaling behaviour, and application hosting options.

The implementation currently includes:

- Secure Azure Storage Account configuration
- Blob storage and Azure File Share deployment
- Storage lifecycle management and access control
- Shared Access Signature (SAS) validation
- Storage firewall and selected network access configuration

Planned implementation will extend into virtual machines, Virtual Machine Scale Sets, Azure App Service, Azure Container Instances, and Azure Container Apps.

---

## 🎯 Scenario  

An organisation requires a cloud workload platform that supports:

- Secure storage for application and operational data
- Scalable compute resources for workload hosting
- Cost-aware storage and compute configuration
- Flexible hosting across IaaS, PaaS, and containers
- Controlled access to storage and application resources
- Foundation for application scaling and availability testing

---

## 🏗 Architecture Model  

The architecture is based on Azure workload hosting services across storage, compute, web, and container platforms.

- **Azure Storage Account** provides central storage for blob and file workloads
- **Blob Storage** supports unstructured object storage
- **Azure Files** provides managed file share capability
- **Storage lifecycle management** supports cost optimisation
- **SAS access** provides temporary scoped access to private data
- **Storage firewall rules** restrict access to approved networks
- **Virtual Machines** will support IaaS workload hosting
- **Virtual Machine Scale Sets** will support horizontal scaling
- **Azure App Service** will support PaaS web application hosting
- **Azure Container Instances** will support lightweight container workloads
- **Azure Container Apps** will support managed container application hosting

This model demonstrates workload placement across the main Azure hosting options while maintaining attention to security, scalability, cost, and operational validation.

---

## 🔧 Implementation  

### 1. Azure Storage Foundation  

- Created and configured an Azure Storage Account
- Configured geo-redundant storage
- Created blob and file storage resources
- Applied lifecycle management for older blob data
- Configured immutable blob retention
- Restricted storage access using selected networks
- Tested temporary scoped access using SAS

**Outcome**

- Established a secure and cost-aware storage foundation
- Validated private blob access and controlled delegated access
- Demonstrated network-based storage access restriction

---

### 2. Compute Workload Hosting  

- Virtual machine deployment and configuration
- VM resizing and disk performance changes
- Managed disk attachment and modification
- Availability and workload placement considerations

**Outcome**

- Planned implementation for IaaS workload hosting
- Will demonstrate compute sizing and storage performance decisions

---

### 3. Virtual Machine Scale Sets  

- VMSS deployment across availability zones
- Load balancing configuration
- Autoscale rule configuration
- Scale-out and scale-in testing

**Outcome**

- Planned implementation for horizontal scaling
- Will demonstrate demand-based compute scaling

---

### 4. Web Application Hosting  

- Azure App Service deployment
- Deployment slot configuration
- External Git deployment
- Slot swap validation
- Web app autoscaling and load testing

**Outcome**

- Planned implementation for PaaS web hosting
- Will demonstrate controlled release and scaling behaviour

---

### 5. Container Workloads  

- Azure Container Instances deployment
- Azure Container Apps deployment
- Container application validation
- Comparison of lightweight and managed container hosting options

**Outcome**

- Planned implementation for container-based workloads
- Will demonstrate serverless and managed container hosting patterns

---

## ✅ Validation and Testing  

- Confirmed successful storage account deployment
- Validated private blob container access
- Confirmed anonymous blob access was blocked
- Confirmed SAS-based blob access worked
- Confirmed Azure File Share creation and upload
- Validated lifecycle management configuration
- Validated immutable blob retention configuration
- Confirmed storage firewall and selected network access behaviour
- Planned validation for VM sizing, VMSS autoscaling, App Service deployment slots, web app autoscaling, and container app access

---

## 🧠 Key Design Decisions  

- Used Azure Storage as the project foundation before compute workloads
- Applied private access controls rather than public blob access
- Used SAS for temporary delegated access
- Used lifecycle management for storage cost optimisation
- Used selected network access to reduce storage exposure
- Planned multiple hosting models to compare IaaS, PaaS, and containers
- Planned scaling coverage across VMSS and App Service autoscaling

---

## 📊 Skills Demonstrated  

- Azure Storage Account configuration
- Blob storage configuration
- Azure File Share configuration
- Storage lifecycle management
- Immutable blob retention
- Shared Access Signature configuration
- Storage firewall configuration
- Selected network access validation
- Secure storage access testing
- Planned virtual machine deployment and resizing
- Planned Virtual Machine Scale Set autoscaling
- Planned Azure App Service deployment and scaling
- Planned container workload deployment

---

## 📚 Key Learnings  

- Storage configuration should balance access, resilience, and cost
- Private blob access is the safer default for stored data
- SAS provides controlled access without making containers public
- Lifecycle rules help reduce storage cost for infrequently accessed data
- Storage firewall rules provide an important network security layer
- Different workload types require different hosting models
- Scaling strategy depends on the workload platform and performance requirements

---

## 🔍 Strategic Assessment  

### Strengths  

- Secure storage foundation implemented and validated
- Clear coverage of blob and file storage services
- Access control tested using private access, SAS, and network restrictions
- Cost optimisation included through lifecycle management
- Project structure supports progression into compute and application scaling

---

### Priority Improvements  

- Complete VM and VMSS implementation
- Complete Azure App Service deployment and autoscaling
- Complete container workload deployment
- Add monitoring and alerting for storage and compute resources
- Convert repeated deployment steps into reusable Bicep templates
- Implement private endpoints for storage and application services

---

## 🚀 Next Steps  

- Implement virtual machines and managed disks
- Implement Virtual Machine Scale Sets and autoscaling
- Deploy Azure App Service with deployment slots
- Configure web app autoscaling and load testing
- Deploy Azure Container Instances
- Deploy Azure Container Apps
- Add monitoring and diagnostics across deployed workloads
- Extend the project into a complete workload hosting and scaling design

---

## 📂 Evidence  

Implementation evidence is stored in the `evidence` folder and organised by workstream.

| Folder | Evidence Area |
|---|---|
| `07-storage` | Storage account, blob storage, Azure Files, SAS access, lifecycle management, immutable storage, and network access validation evidence. |
| `08-virtual-machines` | Planned evidence for virtual machines, managed disks, resizing, and Virtual Machine Scale Sets. |
| `09a-web-apps` | Planned evidence for Azure App Service, deployment slots, autoscaling, and load testing. |
| `09b-container-instances` | Planned evidence for Azure Container Instances deployment and validation. |
| `09c-container-apps` | Planned evidence for Azure Container Apps deployment and validation. |

---

## 🏁 Outcome  

This project currently demonstrates secure Azure Storage configuration and validation as the foundation for broader workload hosting.

The next phase will expand the project into compute deployment, scaling, web application hosting, and container-based workloads.