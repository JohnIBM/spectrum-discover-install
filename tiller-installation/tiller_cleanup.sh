# Clean up the previous Tiller installation as follows:
oc delete deployment tiller
oc delete sa tiller
oc delete role tiller
oc delete rolebinding tiller
oc project default
oc delete ns tiller



