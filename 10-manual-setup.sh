oc new-project istio-system

oc apply -f ./project-istio-system/servicemesh-controll-plane.yaml -n istio-system
oc get smcp -n istio-system

oc new-project bookinfo

oc apply -f ./project-istio-system/servicemesh-member-role.yaml -n istio-system
oc get smmr -n istio-system

oc apply -f https://raw.githubusercontent.com/mmartofel/gitops-demo-flow-bookinfo-application/main/platform/kube/bookinfo.yaml -n bookinfo
oc apply -f https://raw.githubusercontent.com/mmartofel/gitops-demo-flow-bookinfo-application/main/networking/bookinfo-gateway.yaml -n bookinfo
oc apply -f https://raw.githubusercontent.com/mmartofel/gitops-demo-flow-bookinfo-application/main/networking/destination-rule-all.yaml -n bookinfo
# with MTLS
# oc apply -f https://raw.githubusercontent.com/mmartofel/gitops-demo-flow-bookinfo-application/main/networking/destination-rule-all-mtls.yaml -n bookinfo

# show application entry point
export GATEWAY_URL=$(oc -n istio-system get route istio-ingressgateway -o jsonpath='{.spec.host}')
echo "http://$GATEWAY_URL/productpage"
