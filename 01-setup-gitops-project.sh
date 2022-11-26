oc apply -f ./application-project/appproject-requirements.yaml -n openshift-gitops
oc apply -f ./applications/application-operators.yaml -n openshift-gitops
oc apply -f ./applications/application-project-bookinfo.yaml -n openshift-gitops
oc apply -f ./applications/application-project-dev.yaml -n openshift-gitops
oc apply -f ./applications/application-project-istio-system.yaml -n openshift-gitops
