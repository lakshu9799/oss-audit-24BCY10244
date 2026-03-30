#!/bin/bash
# script2_python_inspector.sh
# Inspect Python installation and basic package data.

if command -v python >/dev/null 2>&1; then
  python_version=$(python --version 2>&1)
  echo "Python is installed: $python_version"

  echo "Installed packages (pip3 list or pip list fallback):"
  if command -v pip3 >/dev/null 2>&1; then
    pip3 list 2>/dev/null || echo "Failed to list using pip3"
  elif command -v pip >/dev/null 2>&1; then
    pip list 2>/dev/null || echo "Failed to list using pip"
  else
    echo "pip is not available"
  fi

  # Check for common packages with case and basic description
  echo
  echo "Package checks:"
  case $(python -c "import pkgutil; print(' '.join([m.name for m in pkgutil.iter_modules()]))" 2>/dev/null || echo "") in
    *numpy*) echo "numpy: numerical arrays and scientific computing";;
    *) echo "numpy: not detected";;
  esac

  case $(python -c "import pkgutil; print(' '.join([m.name for m in pkgutil.iter_modules()]))" 2>/dev/null || echo "") in
    *flask*) echo "flask: lightweight web framework";;
    *) echo "flask: not detected";;
  esac

  case $(python -c "import pkgutil; print(' '.join([m.name for m in pkgutil.iter_modules()]))" 2>/dev/null || echo "") in
    *django*) echo "django: full-stack web framework";;
    *) echo "django: not detected";;
  esac

else
  echo "Python is not installed on this system."
fi
