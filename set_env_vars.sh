# Set Environment Variables for IBM Spectrum Discover Installation
export master_ip="172.18.42.240"
export SD_USER="sdadmin"
export SD_PASSWORD="Passw0rd"
export installer_path="/home/discover"
export project_name="spectrum-discover"
export db2wh_release_name="spectrum-discover-db2-release"
export db2wh_password="Passw0rd"
export kafka_storage_class="sd-kafka-sc"
export sd_storage_class="sd-sc"
export db2wh_pvc_name="db-pvc"
export data_pvc_name="sd-data-pvc"
export backup_pvc_name="sd-backup-pvc"
export ingress_host="spectrum-discover-ingress.apps.jmasc-ocp.csplab.local"
export ingress_tls_secret_name="spectrum-discover-ingress-tls-name"
export kafka_sasl_host="jmasc-ocp-h9p4v-compute-4.jmasc-ocp.csplab.local"
export kafka_ssl_host="jmasc-ocp-h9p4v-compute-5.jmasc-ocp.csplab.local"
export image_repository="default-route-openshift-image-registry.apps.jmasc-ocp.csplab.local/spectrum-discover"
export TILLER_NAMESPACE=tiller
# OCP registry must be exposed:
# oc patch configs.imageregistry.operator.openshift.io/cluster --patch '{"spec":{"defaultRoute":true}}' --type=merge
export HOST=$(oc get route default-route -n openshift-image-registry --template='{{ .spec.host }}')
