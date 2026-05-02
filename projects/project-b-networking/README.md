# 📁 Project B - Azure Network Architecture & Connectivity  
📊 **Status:** ✅ Complete  

---

## 📖 Overview  

This project implements a structured Azure network architecture designed to support scalable, secure, and segmented workloads.  

It establishes foundational connectivity patterns, traffic control mechanisms, centralised security inspection, and repeatable deployment practices aligned to enterprise networking principles.  

The implementation includes:  

- Infrastructure as Code (IaC) using ARM templates and Bicep for repeatable deployment 
- Virtual network design with structured subnet segmentation 
- Network security enforcement using NSGs and application security groups 
- Inter-VNet connectivity using peering and custom routing 
- Traffic management using load balancing and application gateway patterns 
- Secure hub-spoke architecture using Azure Firewall and route tables 
- Forced routing of workload traffic through a central firewall 
- DNS configuration to support secure workload access and name resolution 

All components were deployed and validated through controlled testing of connectivity, routing, firewall behaviour, DNS resolution, and access controls.  

The design aligns to core cloud architecture principles including segmentation, least privilege network access, centralised traffic inspection, controlled routing, and scalable infrastructure deployment.  

---

## 🎯 Scenario  

An organisation requires a cloud network architecture that ensures:  

- Scalable and repeatable infrastructure deployment 
- Segmentation of core services and workload environments  
- Secure communication between isolated network domains  
- Controlled inbound and outbound traffic flows  
- Centralised inspection of workload traffic  
- Secure hub-spoke network expansion  
- Foundation for enterprise landing zone design  

---

## 🏗 Architecture Model  

The architecture is based on multiple virtual networks with defined address spaces, subnet segmentation, controlled routing, and centralised network security.  

- A **Core Services VNet** hosts shared and database subnets   
- A **Manufacturing VNet** hosts isolated workload subnets   
- A **Hub VNet** hosts shared security services   
- An **Application Spoke VNet** hosts frontend and backend workload subnets   
- **Network Security Groups (NSGs)** enforce subnet-level traffic control  
- **Application Security Groups (ASGs)** provide logical grouping of workloads  
- **Public DNS zones** support external name resolution   
- **Private DNS zones** provide internal name resolution across VNets 
- **VNet peering** enables private communication between networks   
- **User-defined routes (UDRs)** control traffic flow between subnets   
- **Azure Firewall** provides centralised traffic inspection and egress control   
- **Route tables** force selected workload traffic through Azure Firewall   
- **Azure Load Balancer** provides traffic distribution across backend resources  
- **Azure Application Gateway** provides web traffic routing and backend health validation   

This model reflects a segmented and controlled network design aligned to Azure landing zone and enterprise networking patterns.  

---

## 🔧 Implementation  

### 1. Infrastructure as Code (IaC) Foundation   

- Deployed resources using ARM templates and Bicep  
- Parameterised deployments for reuse and consistency  
- Executed deployments via Azure Portal, PowerShell, and CLI  

> **Note**  
> The IaC implementation demonstrates the capability to deploy Azure infrastructure using declarative templates.  
> While the lab scenario focuses on generic resource deployment, the same approach is directly applicable to provisioning networking components such as VNets, subnets, and routing configurations in a consistent and repeatable manner.  

**Outcome**  

- Established repeatable infrastructure deployment model  
- Reduced manual configuration risk  
- Enabled scalable network provisioning approach  

---

### 2. Virtual Network Design & Segmentation   

- Created multiple virtual networks for workload isolation  
- Defined structured IP addressing schemes  
- Implemented subnet segmentation for functional separation  
- Created dedicated frontend and backend workload subnets  
- Created dedicated firewall subnet for Azure Firewall deployment  

**Outcome**  

- Clear separation of core services and workload environments  
- Improved network organisation and scalability  
- Reduced risk of overlapping address spaces  
- Established foundation for hub-spoke network expansion  

---

### 3. Network Security Enforcement   

- Implemented Network Security Groups (NSGs) at subnet level  
- Defined inbound and outbound security rules  
- Utilised Application Security Groups (ASGs) for logical grouping  
- Controlled access between frontend and backend workload tiers  

**Outcome**  

- Enforced least privilege network access  
- Simplified rule management through grouping  
- Reduced exposure of internal resources  
- Improved workload-level segmentation  

---

### 4. Intersite Connectivity & Routing   

- Configured VNet peering between isolated virtual networks  
- Validated private communication between network domains  
- Implemented user-defined routes to control traffic paths  
- Used routing controls to direct traffic through defined next hops  

**Outcome**  

- Enabled private communication between segmented VNets  
- Avoided unnecessary public exposure  
- Improved control over east-west traffic flows  
- Established custom routing behaviour for enterprise scenarios  

---

### 5. Traffic Management   

- Deployed Azure Load Balancer for traffic distribution  
- Configured frontend IP, backend pool, health probe, and load balancing rule  
- Deployed Azure Application Gateway for web traffic routing  
- Configured backend pools and path-based routing rules  
- Validated backend health and web routing behaviour  

**Outcome**  

- Demonstrated traffic management patterns  
- Validated traffic distribution across backend workloads  
- Implemented application-aware routing using Application Gateway  
- Improved availability and routing control for web workloads  

---

### 6. Secure Hub-Spoke Firewall Architecture   

- Created a hub virtual network for shared network security services  
- Created an application spoke virtual network for workload hosting  
- Configured frontend and backend workload subnets  
- Deployed Azure Firewall into a dedicated `AzureFirewallSubnet`  
- Configured VNet peering between hub and spoke networks  
- Created Azure Firewall rules to control workload traffic  
- Created route tables to direct workload traffic through Azure Firewall  
- Associated route tables with application workload subnets  
- Configured DNS settings to support secure workload access  
- Validated routing and access behaviour through controlled testing  

**Outcome**  

- Extended the network design into a secure hub-spoke model  
- Introduced centralised firewall inspection  
- Enforced controlled outbound access from workload subnets  
- Demonstrated forced routing through Azure Firewall  
- Improved alignment with enterprise landing zone networking patterns  

---

## ✅ Validation and Testing  

- Validated NSG rules through controlled traffic scenarios  
- Confirmed routing behaviour via custom route testing  
- Confirmed VNet peering connectivity between isolated networks  
- Validated Load Balancer traffic distribution  
- Validated Application Gateway backend health and path-based routing  
- Confirmed route table association with workload subnets  
- Confirmed workload traffic routing through Azure Firewall  
- Validated DNS configuration and name resolution behaviour  
- Reviewed firewall rule behaviour and access control outcomes  

---

## 🧠 Key Design Decisions  

- Established IaC as deployment baseline for infrastructure
- Segmented networks using multiple VNets instead of flat design  
- Used subnet-level security enforcement via NSGs  
- Used ASGs to simplify workload-based security rules  
- Used VNet peering for private inter-network connectivity  
- Used route tables and UDRs to control traffic paths  
- Introduced Azure Firewall for centralised inspection and egress control  
- Used a hub-spoke model to separate shared security services from application workloads  
- Used Application Gateway for web traffic routing  
- Used Load Balancer for traffic distribution  

---

## 📊 Skills Demonstrated  

- Infrastructure as Code (ARM / Bicep)  
- Azure virtual network design and segmentation  
- Network security implementation (NSG / ASG)  
- VNet peering  
- User-defined routing  
- Route table configuration  
- Azure Firewall deployment and rule configuration  
- Secure hub-spoke network architecture  
- DNS zone and record configuration  
- Azure Load Balancer configuration  
- Azure Application Gateway configuration  
- Backend health validation  
- Network connectivity testing  
- Azure Network Watcher troubleshooting  

---

## 📚 Key Learnings  

- IaC is essential for consistent infrastructure deployment
- Network segmentation is critical for scalability and security  
- Default routing is often insufficient for enterprise scenarios  
- NSG and ASG combination improves rule management  
- VNet peering enables private connectivity without exposing workloads publicly  
- Route tables and UDRs provide control over traffic paths  
- Azure Firewall strengthens hub-spoke architecture through centralised inspection  
- Forced routing is required when workload traffic must pass through a security control  
- Application Gateway and Load Balancer solve different traffic management requirements  
- DNS design is important for secure and scalable workload communication  

---

## 🔍 Strategic Assessment  

### Strengths  

- Integration of IaC for deployment consistency  
- Clear network segmentation across VNets and subnets  
- Use of NSGs and ASGs for access control  
- Private connectivity through VNet peering  
- Traffic management using Load Balancer and Application Gateway  
- Centralised security inspection using Azure Firewall  
- Forced routing of workload traffic through firewall controls  
- Stronger alignment with enterprise hub-spoke landing zone patterns  

---

### Priority Improvements  

- Implement private endpoints for service access  
- Expand DNS integration across additional workload services  
- Add Azure Bastion for secure administrative access  
- Integrate firewall logs with Log Analytics  
- Add monitoring and alerting for network security events  
- Convert more network deployment steps into reusable Bicep modules  
- Extend the design into a full landing zone with management, connectivity, and workload subscriptions  

---

## 🚀 Next Steps  

- Extend architecture into full landing zone design  
- Integrate with compute and application workloads  
- Implement private endpoints for Azure PaaS services  
- Add Azure Bastion for secure management access  
- Enable diagnostic logging for Azure Firewall and Application Gateway  
- Integrate network logs with Azure Monitor and Log Analytics  
- Align with enterprise-scale networking patterns  
- Convert the final design into reusable Infrastructure as Code modules  

---

## 📂 Evidence  

Implementation evidence is stored in the `evidence` folder and organised by workstream.

| Folder | Evidence Area |
|---|---|
| `03-iac-foundation` | ARM templates, Bicep, PowerShell, CLI, and deployment validation evidence. |
| `04-virtual-networking` | Virtual networks, subnets, NSGs, ASGs, and DNS configuration evidence. |
| `05-intersite-connectivity` | VNet peering, Network Watcher testing, custom routing, and connectivity validation evidence. |
| `06-traffic-management` | Azure Load Balancer, Application Gateway, backend pools, routing rules, and backend health evidence. |
| `07-secure-hub-spoke-firewall` | Hub-spoke architecture, Azure Firewall, firewall rules, route tables, forced routing, DNS, and validation evidence. |

---

## 🏁 Outcome  

This project demonstrates the ability to design, implement, secure, and validate Azure network architecture using enterprise-aligned networking patterns.

The final design moves beyond basic VNet configuration by implementing segmentation, private connectivity, traffic management, DNS, custom routing, and centralised firewall inspection through a secure hub-spoke architecture.