package compliance_framework.template.k8s_audit_policy_exists

violation[{
    "title": "Audit policy is not defined",
    "description": "The kubelet audit policy is not defined in the cluster's configuration",
    "severity": "high"
}] if {
    not input.kubeletConfig.auditPolicy
}
