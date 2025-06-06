require "./utils/embedded_file_manager.cr"

ESSENTIAL_PASSED_THRESHOLD = 15
CNF_DIR = "installed_cnf_files"
DEPLOYMENTS_DIR = File.join(CNF_DIR, "deployments")
CNF_TEMP_FILES_DIR = File.join(CNF_DIR, "temp_files")
CNF_INSTALL_LOG_FILE = File.join(CNF_TEMP_FILES_DIR, "installation.log")
CONFIG_FILE = "cnf-testsuite.yml"
BASE_CONFIG = "./config.yml"
COMMON_MANIFEST_FILE_PATH = "#{CNF_DIR}/common_manifest.yml"
DEPLOYMENT_MANIFEST_FILE_NAME = "deployment_manifest.yml"
PASSED = "passed"
FAILED = "failed"
SKIPPED = "skipped"
NA = "na"
ERROR = "error"
# todo move to helm module
# CHART_YAML = "Chart.yaml"
DEFAULT_POINTSFILENAME = "points_v1.yml"
SONOBUOY_K8S_VERSION = "0.56.14"
SONOBUOY_OS = "linux"
IGNORED_SECRET_TYPES = ["kubernetes.io/service-account-token", "kubernetes.io/dockercfg", "kubernetes.io/dockerconfigjson", "helm.sh/release.v1"]
EMPTY_JSON = JSON.parse(%({}))
EMPTY_JSON_ARRAY = JSON.parse(%([]))
SPECIALIZED_INIT_SYSTEMS = ["tini", "dumb-init", "s6-svscan"]
ROLLING_VERSION_CHANGE_TEST_NAMES = ["rolling_update", "rolling_downgrade", "rolling_version_change"]
WORKLOAD_RESOURCE_KIND_NAMES = ["replicaset", "deployment", "statefulset", "pod", "daemonset"]

TESTSUITE_NAMESPACE = "cnf-testsuite"
DEFAULT_CNF_NAMESPACE = "cnf-default"
# (kosstennbl) Needed only for manifest deployments, where we don't have control over installation namespace
CLUSTER_DEFAULT_NAMESPACE = "default"

#Embedded global text variables
EmbeddedFileManager.node_failure_values
EmbeddedFileManager.reboot_daemon
EmbeddedFileManager.chaos_network_loss
EmbeddedFileManager.chaos_cpu_hog
EmbeddedFileManager.chaos_container_kill
EmbeddedFileManager.points_yml
EmbeddedFileManager.points_yml_write_file
EmbeddedFileManager.enforce_image_tag
EmbeddedFileManager.constraint_template
EmbeddedFileManager.disable_cni
EmbeddedFileManager.fluentd_values
EmbeddedFileManager.fluentbit_values
EmbeddedFileManager.fluentd_bitnami_values
EmbeddedFileManager.ueransim_helmconfig

EXCLUDE_NAMESPACES = [
  "kube-system",
  "kube-public",
  "kube-node-lease",
  "local-path-storage",
  "litmus",
  TESTSUITE_NAMESPACE
]
