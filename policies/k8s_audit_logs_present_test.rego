package compliance_framework.template.k8s_audit_logs_present

# Test for when auditLogs are present
test_audit_logs_present if {
    count(violation) == 0 with input as {
        "statsSummary": {
            "auditLogs": []
        }
    }
}

# Test for when auditLogs are missing
test_audit_logs_missing if {
    violation[{
        "title": "Audit logs are not present",
        "description": "The kubelet audit logs have not been found and should be collected and sent to a centralized logging system",
        "severity": "high"
    }] with input as {
        "statsSummary": {
        }
    }
}
