# 🔐 Identity and Emergency Access Governance

<p align="left">
  ↩️ <a href="../"><strong>Back to Azure Cloud Engineering Index</strong></a><br>
  📁 <a href="../../"><strong>Back to Projects Index</strong></a>
</p>

## Project Scope

This project demonstrates Microsoft Entra ID emergency access governance capability through a structured **break-glass access review**.

The focus is on showing how emergency access arrangements can be reviewed, documented, risk-assessed, and improved without exposing sensitive tenant, account, policy, or authentication details.

## Review Summary

A Microsoft Entra ID **emergency access / break-glass governance review** was completed to assess resilience, access coverage, Conditional Access handling, monitoring, and follow-up actions.

The review identified governance improvements relating to emergency access coverage, independent contact arrangements, Conditional Access exception handling, alerting, and privileged access monitoring.

No immediate configuration changes were implemented during the review stage.

## Delivery Evidence

| Area | Summary |
|---|---|
| **Problem** | Emergency access arrangements needed to be reviewed for resilience, governance, Conditional Access handling, monitoring coverage, and operational risk. |
| **Action** | Reviewed emergency access coverage, documented findings, identified follow-up actions, and produced a governance risk summary. |
| **Tools / Evidence** | Microsoft Entra ID, Conditional Access review, emergency access governance notes, risk register, recommendation summary, and follow-up action log. |
| **Control Value** | Improved visibility of emergency access risks, supported identity resilience planning, highlighted monitoring gaps, and created a clear follow-up record. |
| **Public-Safe Evidence** | Review summary, key findings, governance register, risk summary, and follow-up action log using sanitised public-safe details only. |

## Skills Demonstrated

| Skill Area | Evidence Demonstrated |
|---|---|
| **Microsoft Entra ID Governance** | Review of emergency access arrangements within an Entra ID identity environment. |
| **Break-Glass Access Review** | Assessment of emergency account coverage, resilience, access purpose, and governance expectations. |
| **Conditional Access Awareness** | Review of how emergency access should be handled in relation to Conditional Access controls and exceptions. |
| **Privileged Access Resilience** | Identification of risks that could affect emergency administrative access during outage, lockout, or policy failure scenarios. |
| **Monitoring and Alerting Awareness** | Recognition that emergency access use should be monitored, logged, and alerted to the appropriate IAM or security owner. |
| **Risk Documentation** | Creation of a clear risk and recommendation summary for follow-up review. |
| **Governance Evidence** | Production of public-safe documentation that supports audit-style review without exposing sensitive tenant details. |
| **Operational Follow-Up** | Use of an action log to separate review findings from future remediation activity. |

## Key Findings

| Area | Outcome |
|---|---|
| **Emergency Access Account Coverage** | Reviewed |
| **Secondary Emergency Access Account** | Recommended |
| **Independent Contact Method** | Recommended |
| **Conditional Access Exception Approach** | Reviewed |
| **Monitoring and Alerting** | Recommended |
| **Configuration Changes** | Not implemented during review stage |

## Documents Completed

| Document | Purpose |
|---|---|
| **Emergency Access Review Notes** | Records the review activity and main observations. |
| **Break-Glass Governance Register** | Captures emergency access coverage, ownership, and governance considerations. |
| **Risk and Recommendation Summary** | Documents identified risks and recommended improvements. |
| **Follow-Up Action Log** | Separates findings from future remediation or automation work. |
| **Sanitised Evidence Record** | Provides public-safe evidence suitable for portfolio use. |

## Future Automation Build

A future improvement would be to build a **break-glass sign-in alerting workflow** using Microsoft Entra sign-in logs, Log Analytics, KQL, and Logic Apps.

The workflow would alert the IAM or security owner when emergency access is used, supporting faster investigation and stronger privileged access oversight.

## Professional Relevance

This project is relevant to IAM Engineer, Azure Administrator, Cloud Security Engineer, Cloud Engineer, and Security Operations support roles.

It demonstrates practical ability to review identity resilience controls where emergency access must be:

- available during lockout or outage scenarios
- tightly governed
- excluded from inappropriate blocking policies
- monitored for unusual or unauthorised use
- documented for review and audit
- handled without exposing sensitive administrative details

## Tools and Technologies

| Area | Tools / Concepts |
|---|---|
| **Identity Platform** | Microsoft Entra ID |
| **Access Control** | Emergency access accounts, break-glass access, privileged access resilience |
| **Policy Review** | Conditional Access exception handling |
| **Monitoring** | Sign-in logs, alerting logic, privileged access monitoring |
| **Future Automation** | Log Analytics, KQL, Logic Apps |
| **Governance** | Risk register, recommendation summary, follow-up action log |
| **Documentation** | GitHub, markdown documentation, sanitised public-safe evidence |

## Outcome

The outcome of this project is a structured emergency access governance review showing how break-glass access can be assessed, documented, and improved in a controlled identity environment.

The review demonstrates **IAM governance, Conditional Access awareness, identity resilience planning, privileged access monitoring awareness, risk documentation, and public-safe security evidence handling**.

## Public-Safe Note

This project uses public-safe and sanitised evidence only. It does not include real account names, email addresses, tenant details, Conditional Access policy names, admin role assignments, authentication methods, internal screenshots, or confidential approval records.
