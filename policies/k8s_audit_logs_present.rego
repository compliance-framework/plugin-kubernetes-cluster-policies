package compliance_framework.template.k8s_audit_logs_present

violation[{
    "title": "Audit logs are not present",
    "description": "The kubelet audit logs have not been found and should be collected and sent to a centralized logging system",
    "severity": "high"
}] if {
    not input.auditLogs
}
