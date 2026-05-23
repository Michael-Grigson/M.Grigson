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
- Zone-resilient Azure virtual machine deployment
- Virtual machine resizing and managed disk configuration
- Azure Virtual Machine Scale Set deployment
- VMSS autoscale rule configuration
- VM SKU, quota, region, and image compatibility troubleshooting
- Azure Container Instance deployment using a Docker quickstart image
- Public DNS endpoint validation for Azure Container Instances
- Azure Container Instance runtime and HTTP request log validation
- Azure Container Apps deployment using a managed Container Apps environment
- Public application URL validation for Azure Container Apps
- Managed container application hosting validation

Planned implementation will extend into Azure App Service.

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
- **Virtual Machines** support IaaS workload hosting
- **Managed Disks** support VM storage attachment, detachment, and performance changes
- **Availability Zones** improve VM placement resilience
- **Virtual Machine Scale Sets** support horizontal scaling and instance management
- **Azure Load Balancer** is configured as part of the VMSS networking model
- **Autoscale rules** adjust VMSS capacity based on performance thresholds
- **Azure App Service** is planned to support PaaS web application hosting
- **Azure Container Instances** support lightweight container workloads exposed through a public DNS endpoint
- **Azure Container Apps** supports managed container application hosting through a Container Apps environment and generated application URL

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

- Deployed Azure virtual machines across availability zones
- Configured VM placement for zone-resilient compute
- Resized virtual machines to adjust compute capacity
- Created and attached a managed data disk
- Detached, modified, and reattached managed disk storage
- Changed managed disk performance tier
- Created a virtual machine using Azure PowerShell
- Troubleshot SKU availability, quota limits, region support, and image generation compatibility

**Outcome**

- Implemented IaaS workload hosting using Azure virtual machines
- Demonstrated compute resizing and storage performance adjustment
- Validated practical deployment troubleshooting across region, quota, SKU, and image constraints

---

### 3. Virtual Machine Scale Sets  

- Deployed an Azure Virtual Machine Scale Set
- Configured VMSS networking and subnet settings
- Configured Network Security Group rules for HTTP access
- Configured Azure Load Balancer integration
- Configured VMSS instance limits
- Created scale-out rules based on CPU threshold
- Created scale-in rules based on CPU threshold
- Reviewed VMSS instance monitoring and scaling behaviour
- Adjusted VMSS sizing due to Azure quota and regional capacity constraints

**Outcome**

- Implemented horizontal compute scaling using Azure Virtual Machine Scale Sets
- Demonstrated autoscale configuration using performance-based rules
- Validated real-world deployment decision-making under Azure subscription and regional limits

---

### 4. Web Application Hosting  

- Planned Azure App Service deployment
- Planned deployment slot configuration
- Planned External Git deployment
- Planned slot swap validation
- Planned web app autoscaling and load testing

**Outcome**

- Planned implementation for PaaS web hosting
- Will demonstrate controlled release and scaling behaviour once completed

---

### 5. Container Workloads  

- Deployed an Azure Container Instance using a Microsoft quickstart Docker image
- Configured a Linux container workload
- Exposed the container over HTTP using port 80
- Configured a public DNS name label for browser-based access
- Validated the running container state in Azure
- Tested the public container endpoint in a browser
- Reviewed container logs and confirmed HTTP GET request activity
- Deployed an Azure Container App using a Microsoft quickstart image
- Created a managed Container Apps environment
- Configured the container app with public ingress on port 80
- Validated the Container App through the generated application URL
- Reviewed the distinction between lightweight container instances and managed container application hosting

**Outcome**

- Implemented lightweight container hosting using Azure Container Instances
- Implemented managed container application hosting using Azure Container Apps
- Demonstrated public endpoint validation for containerised workloads
- Confirmed operational visibility using container runtime logs for Azure Container Instances
- Established comparison evidence between Azure Container Instances and Azure Container Apps

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
- Confirmed successful deployment of zone-resilient virtual machines
- Validated VM resizing from one SKU to another
- Confirmed managed disk creation, attachment, detachment, performance change, and reattachment
- Confirmed VMSS deployment and configuration
- Confirmed VMSS load balancing configuration
- Configured scale-out and scale-in autoscale rules
- Confirmed VMSS minimum, maximum, and default instance limits
- Validated Azure PowerShell VM deployment workflow
- Documented deployment constraints including SKU unavailability, regional quota limits, unsupported availability zones, and image generation mismatch
- Confirmed successful Azure Container Instance deployment
- Confirmed Azure Container Instance status was Running
- Validated public FQDN access to the containerised web application
- Confirmed the Azure Container Instance welcome page loaded successfully
- Reviewed container logs and confirmed browser-generated HTTP GET requests
- Confirmed successful Azure Container App deployment validation
- Confirmed Container Apps environment creation
- Validated public ingress configuration on port 80
- Validated Azure Container App access through the generated application URL
- Planned validation for App Service deployment slots and web app autoscaling

---

## 🧠 Key Design Decisions  

- Used Azure Storage as the project foundation before compute workloads
- Applied private access controls rather than public blob access
- Used SAS for temporary delegated access
- Used lifecycle management for storage cost optimisation
- Used selected network access to reduce storage exposure
- Used availability zones for VM placement resilience where supported
- Used VM resizing to demonstrate vertical scaling
- Used managed disk changes to demonstrate storage performance adjustment
- Used VMSS to demonstrate horizontal scaling
- Used CPU-based autoscale rules for controlled scale-out and scale-in behaviour
- Selected alternative SKUs and regions where Azure quota or capacity restrictions prevented the original configuration
- Used Azure Container Instances for lightweight container workload hosting without managing servers
- Used a Microsoft quickstart container image to validate container platform deployment
- Used public DNS access to test basic external container availability
- Used container logs to confirm runtime request activity
- Used Azure Container Apps to validate managed container application hosting
- Used a managed Container Apps environment to abstract container hosting infrastructure
- Used public ingress to validate browser-based access to the container app
- Planned multiple hosting models to compare IaaS, PaaS, lightweight containers, and managed container apps
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
- Azure virtual machine deployment
- Availability zone configuration
- VM resizing and compute SKU selection
- Managed disk creation and attachment
- Managed disk detachment and performance tier modification
- Azure Virtual Machine Scale Set deployment
- VMSS networking configuration
- Network Security Group rule configuration
- Azure Load Balancer integration for VMSS workloads
- VMSS autoscale rule configuration
- Scale-out and scale-in threshold planning
- VMSS instance limit configuration
- Azure PowerShell VM deployment
- Azure VM deployment troubleshooting
- Regional quota and SKU availability assessment
- Azure Container Instances deployment
- Linux container workload configuration
- Docker image deployment from Microsoft Container Registry
- Public container DNS endpoint configuration
- Containerised web application validation
- Azure container log review
- Azure Container Apps deployment
- Container Apps environment configuration
- Managed container application hosting
- Public ingress configuration for container applications
- Azure Container Apps application URL validation
- Comparison of Azure Container Instances and Azure Container Apps hosting patterns
- Planned Azure App Service deployment, deployment slots, autoscaling, and load testing

---

## 📚 Key Learnings  

- Storage configuration should balance access, resilience, and cost
- Private blob access is the safer default for stored data
- SAS provides controlled access without making containers public
- Lifecycle rules help reduce storage cost for infrequently accessed data
- Storage firewall rules provide an important network security layer
- Availability zones can improve workload resilience, but support depends on region and SKU
- VM resizing is a practical method for vertical scaling when workload demand changes
- Managed disk performance can be adjusted independently from VM compute sizing
- VMSS provides a scalable compute model for repeated VM instances
- Autoscale rules need sensible thresholds, cooldown periods, and instance limits
- Azure quota, regional capacity, and SKU availability directly affect deployment planning
- Azure Container Instances provides a fast way to run containers without managing virtual machines
- ACI is suitable for lightweight, simple, and short-lived container workloads
- Azure Container Apps provides a managed platform for running containerised applications without managing Kubernetes directly
- Container Apps environments provide the managed boundary for container app execution
- Public ingress makes validation simple but does not represent a fully secured production access model
- Public DNS and application URL validation confirm basic external reachability but do not prove production-grade security
- Container logs provide quick operational evidence that the workload is receiving browser traffic
- Different workload types require different hosting models
- Scaling strategy depends on the workload platform and performance requirements

---

## 🔍 Strategic Assessment  

### Strengths  

- Secure storage foundation implemented and validated
- Clear coverage of blob and file storage services
- Access control tested using private access, SAS, and network restrictions
- Cost optimisation included through lifecycle management
- Zone-resilient VM deployment implemented
- VM compute and storage scaling demonstrated
- VMSS autoscaling implemented using CPU-based rules
- Azure Container Instance deployment completed and validated
- Public container endpoint and runtime logs validated
- Azure Container Apps deployment completed and validated
- Managed Container Apps environment created and tested
- Comparison foundation established across IaaS, VMSS, ACI, and ACA hosting models
- Real-world quota, SKU, and regional deployment constraints documented
- Project structure supports progression into application hosting and broader workload operations

---

### Priority Improvements  

- Complete Azure App Service deployment and autoscaling
- Add monitoring and alerting for storage and compute resources
- Convert repeated deployment steps into reusable Bicep templates
- Implement private endpoints for storage and application services
- Add cost analysis for VM, VMSS, App Service, and container hosting options
- Add a clearer comparison matrix for VM, VMSS, ACI, ACA, and App Service workload placement

---

## 🚀 Next Steps  

- Deploy Azure App Service with deployment slots
- Configure web app autoscaling and load testing
- Add monitoring and diagnostics across deployed workloads
- Extend the project into a complete workload hosting and scaling design
- Convert selected manual deployments into reusable infrastructure-as-code templates
- Add a workload hosting comparison covering Azure VMs, VMSS, Azure Container Instances, Azure Container Apps, and Azure App Service

---

## 📂 Evidence  

Implementation evidence is stored in the `evidence` folder and organised by workstream.

| Folder | Evidence Area |
|---|---|
| `07-storage` | Storage account, blob storage, Azure Files, SAS access, lifecycle management, immutable storage, and network access validation evidence. |
| `08-virtual-machines` | Virtual machines, availability zones, VM resizing, managed disks, PowerShell VM deployment, VMSS deployment, load balancing, autoscale rules, quota handling, and SKU troubleshooting evidence. |
| `09a-web-apps` | Planned evidence for Azure App Service, deployment slots, autoscaling, and load testing. |
| `09b-container-instances` | Azure Container Instances deployment, DNS endpoint configuration, public web validation, running container state, and HTTP request log evidence. |
| `09c-container-apps` | Azure Container Apps environment deployment, container app creation, quickstart image configuration, public ingress, application URL validation, and managed container hosting evidence. |

---

## 🏁 Outcome  

This project currently demonstrates secure Azure Storage configuration, Azure virtual machine management, managed disk scaling, Virtual Machine Scale Set autoscaling, lightweight container workload deployment using Azure Container Instances, and managed container application hosting using Azure Container Apps.

The next phase will expand the project into Azure App Service, deployment slots, web application autoscaling, monitoring, diagnostics, and workload hosting comparison across the implemented Azure compute platforms.