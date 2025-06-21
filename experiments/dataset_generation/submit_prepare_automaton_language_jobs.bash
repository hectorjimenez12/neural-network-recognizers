set -euo pipefail
. experiments/include.bash

device=cpu

for language in "${FINITE_AUTOMATON_LANGUAGES[@]}"; do
    bash src/recognizers/string_sampling/prepare_automaton_dataset.bash \
      "$BASE_DIR" \
      "$language" \
      "$device"
done
