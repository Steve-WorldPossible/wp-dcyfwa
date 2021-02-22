# Set vars:
  PCKG="setup_210212.tar"             # Package name
  SCPT="setup.sh"                     # Script name
  HDIR=$(readlink -f "$(dirname $0)") # Dir path

# Extract package:
  if   [ -e "${HDIR}/${PCKG}" ]; then
       echo "Extracting package in home dir: $(whoami) | ${PCKG}"
       sudo cp "${HDIR}"/"${PCKG}" ~/
       sudo tar -xvf ~/"${PCKG}"
  else echo "Package not found ${PCKG}"
       exit 0;
  fi

# Run update:
  echo -e "\nRunning ${SCPT}\n"
  bash ~/"${SCPT}"
