#!/bin/bash
# Make sure script is executable (Render handles permissions) and then run proxy
# If Render sets PORT env var, we forward it; otherwise default to 443.
export PORT="${PORT:-443}"
export SECRET="${SECRET:-}"

echo "Starting mtprotoproxy with PORT=${PORT} and SECRET set? $( [ -z "$SECRET" ] && echo "NO" || echo "YES" )"
# Run the module shipped by the package
python3 -m mtprotoproxy
