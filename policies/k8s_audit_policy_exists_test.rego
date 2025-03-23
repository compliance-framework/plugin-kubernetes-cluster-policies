package compliance_framework.template.k8s_audit_policy_exists


test_audit_policy_exists if {
    count(violation) == 0 with input as {
        "kubeletConfig": {
            "auditPolicy": {
                "somestuff": true
            }
        }
    }
}

test_audit_policy_missing if {
    violation[{
        "title": "Audit policy is not defined",
        "description": "The kubelet audit policy is not defined in the cluster's configuration",
        "severity": "high"
    }] with input as {
        "kubeletConfig": {}
    }
}
