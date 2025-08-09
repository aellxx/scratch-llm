if [[ "${BASH_SOURCE[0]}" != "${0}" ]]; then
  # Script is being sourced
  if [ -z "$VIRTUAL_ENV" ]; then
    source .venv/bin/activate
  fi
  pip install -r requirements.txt
else
  echo "Please run: source setup.sh"
  echo "Do not run as ./setup.sh or the environment won't be activated in your shell."
fi