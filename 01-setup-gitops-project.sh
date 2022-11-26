oc apply -f ./application-project/appproject-requirements.yaml -n openshift-gitops
oc apply -f ./application/application-operators.yaml -n openshift-gitops
oc apply -f ./application/application-project-bookinfo.yaml -n openshift-gitops
oc apply -f ./application/application-project-dev.yaml -n openshift-gitops
oc apply -f ./application/application-project-istio-system.yaml -n openshift-gitops
