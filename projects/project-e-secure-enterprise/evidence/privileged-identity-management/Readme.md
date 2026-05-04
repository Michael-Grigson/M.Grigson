\## 📁 Project E - Secure Azure Enterprise Environment



\### 🔐 Privileged Identity Management (PIM)



Microsoft Entra Privileged Identity Management (PIM) was implemented to reduce standing administrative access across the environment and enforce just-in-time privileged access for sensitive Microsoft Entra roles.



This configuration uses \*\*PIM for Groups\*\*, where privileged Microsoft Entra roles are assigned to role-assignable groups. Admin accounts are then made eligible members of those groups, allowing privileged access to be activated only when required.



The access model follows this secure pattern:



```text

Microsoft Entra Role

&#x20;       |

&#x20;       v

Role-assignable PIM Group

&#x20;       |

&#x20;       v

Eligible Admin Account

&#x20;       |

&#x20;       v

Temporary Activation Through PIM

```



\---



\## 🎯 Objectives



\- Remove standing privileged access from normal user accounts.

\- Use separate admin accounts for privileged operations.

\- Assign privileged Microsoft Entra roles through role-assignable groups.

\- Manage privileged group membership through PIM.

\- Require MFA and justification during activation.

\- Apply approval workflows for critical and high-risk roles.

\- Restrict privileged group ownership.

\- Keep break-glass accounts separate from PIM.

\- Prepare the environment for alerting, access reviews and audit monitoring.



\---



\## 🧱 PIM Group Model



Privileged access was structured using dedicated PIM role groups.



| Group | Purpose |

|---|---|

| `PIM-Role-Global-Administrator` | Temporary Global Administrator access |

| `PIM-Role-Privileged-Role-Administrator` | Temporary management of privileged role assignments |

| `PIM-Role-Security-Administrator` | Temporary security administration access |

| `PIM-Role-Conditional-Access-Administrator` | Temporary Conditional Access policy administration |

| `PIM-Role-Authentication-Administrator` | Temporary authentication administration |

| `PIM-Role-Global-Reader` | Temporary read-only tenant visibility |

| `PIM-Role-Security-Reader` | Temporary security read-only access |

| `PIM-Role-Reports-Reader` | Temporary reporting access |



Each group was configured as a role-assignable group so that Microsoft Entra roles could be assigned to the group instead of directly to individual users.



\---



\## 🔑 Access Model



Normal user accounts are not used for privileged activation.



Privileged access is assigned only to dedicated admin accounts, reducing the risk of a standard user account compromise becoming a direct route to tenant administration.



Example account separation:



| Account Type | Example | Usage |

|---|---|---|

| Standard user account | Daily productivity, email, Teams and normal user activity |

| Admin account | Privileged Microsoft Entra and Azure administration |

| Break-glass account | Emergency tenant recovery only |



Admin accounts are hardened by design:



\- No email use.

\- No Teams use.

\- No OneDrive sync.

\- No casual browsing.

\- Strong MFA enforced.

\- Conditional Access applied for privileged access.

\- Used only for administrative activity.



\---



\## ⚙️ Configuration Implemented



| Control | Implementation |

|---|---|

| Permanent members | Removed from privileged role groups |

| Eligible members | Dedicated admin accounts only |

| Activation | Required through PIM |

| MFA | Required during activation |

| Justification | Required during activation |

| Approval | Required for critical and selected high-risk roles |

| Notifications | Enabled for privileged activations |

| Ownership | Restricted to minimal controlled ownership |

| Break-glass | Kept separate from PIM |

| Direct assignments | Reviewed to avoid bypassing the PIM model |



Critical roles such as Global Administrator, Privileged Role Administrator, Privileged Authentication Administrator and Conditional Access Administrator were treated as the highest-risk role set.



\---



\## ⏱️ Activation Settings



| Role Type | Max Activation | MFA | Justification | Approval | Alerting |

|---|---:|---|---|---|---|

| Global Administrator | 1 hour | Yes | Yes | Yes | Yes |

| Privileged Role Administrator | 1 hour | Yes | Yes | Yes | Yes |

| Privileged Authentication Administrator | 1 hour | Yes | Yes | Yes | Yes |

| Conditional Access Administrator | 1 hour | Yes | Yes | Yes | Yes |

| Security Administrator | 2 hours | Yes | Yes | Yes | Yes |

| Authentication Policy Administrator | 2 hours | Yes | Yes | Yes | Yes |

| Application Administrator | 2 hours | Yes | Yes | Yes | Yes |

| Cloud Application Administrator | 2 hours | Yes | Yes | Yes | Yes |

| Intune Administrator | 4 hours | Yes | Yes | Optional | Yes |

| Exchange Administrator | 4 hours | Yes | Yes | Optional | Yes |

| SharePoint Administrator | 4 hours | Yes | Yes | Optional | Yes |

| User Administrator | 4 hours | Yes | Yes | Optional | Recommended |

| Groups Administrator | 4 hours | Yes | Yes | Optional | Recommended |

| Reader roles | 8 hours | Yes | Yes | No | Optional |



The configuration avoids permanent active assignments and keeps privileged access temporary, auditable and approval-based where required.



\---



\## 🛡️ Group Ownership Hardening



Privileged group ownership was intentionally restricted.



Broad ownership was avoided because group owners may be able to add themselves or others as members, creating a bypass around PIM activation.



The design avoids assigning `PIM-Role-Privileged-Role-Administrator` as owner of every privileged group, as that would create a single group-based master key.



Instead, administrative changes to privileged role groups are performed through temporary activation of Privileged Role Administrator, with justification, approval and audit logging applied.



\---



\## 🚨 Break-Glass Accounts



Break-glass accounts are kept outside the PIM model.



These accounts are intended for emergency tenant recovery if PIM, MFA, Conditional Access or identity governance controls prevent normal administrative access.



Break-glass accounts are configured separately from standard privileged access.



| Control | Break-Glass Design |

|---|---|

| Account type | Cloud-only |

| Role assignment | Direct Global Administrator |

| PIM dependency | None |

| Conditional Access | Excluded only from policies that could block emergency access |

| Usage | Emergency access only |

| Monitoring | Alert on every sign-in |

| Review | Reviewed regularly |



Break-glass accounts are not added to PIM groups.



\---



\## 📸 Evidence Captured



Suggested evidence for this implementation:



| Evidence | Purpose |

|---|---|

| PIM group discovery screen | Shows groups onboarded into PIM |

| Privileged access groups list | Shows managed PIM role groups |

| Eligible assignment screen | Shows admin accounts are eligible, not permanent |

| Activation settings | Shows MFA, justification, duration and approval settings |



\---



\## Security Outcome



This configuration reduces identity risk by ensuring privileged access is not permanently assigned to users.



The final secure pattern is:



\- No normal account has standing admin access.

\- No admin account has standing privileged group membership.

\- Privileged Microsoft Entra roles are assigned through role-assignable groups.

\- Privileged groups are managed through PIM for Groups.

\- Critical activations require approval.

\- All activations require MFA and justification.

\- Break-glass accounts remain separate and monitored.

\- Exceptions must be documented and reviewed.



\---



\## Key Takeaway



The secure model is not simply creating PIM groups.



The secure model is removing standing access, forcing privileged access through just-in-time activation, separating admin accounts from daily accounts, restricting ownership paths, and monitoring for bypasses.

