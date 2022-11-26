oc apply -f ./operators/gitops.yaml -n openshift-operators

sleep 10
# Fix role bindings for GitOps service account to manage deployments at every namespace
oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:openshift-gitops:openshift-gitops-argocd-application-controller -n openshift-gitops


