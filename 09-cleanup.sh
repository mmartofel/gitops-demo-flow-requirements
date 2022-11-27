oc delete Operator elasticsearch-operator.openshift-operators-redhat
oc delete Operator jaeger-product.openshift-distributed-tracing
oc delete Operator kiali-ossm.openshift-operators
oc delete Operator openshift-gitops-operator.openshift-operators
oc delete Operator openshift-pipelines-operator-rh.openshift-operators
oc delete Operator servicemeshoperator.openshift-operators

oc delete subscription jaeger-product -n openshift-distributed-tracing
oc delete subscription elasticsearch-operator -n openshift-operators-redhat
oc delete subscription kiali-ossm -n openshift-operators
oc delete subscription openshift-gitops-operator -n openshift-operators
oc delete subscription openshift-pipelines-operator -n openshift-operators
oc delete subscription servicemeshoperator -n openshift-operators

