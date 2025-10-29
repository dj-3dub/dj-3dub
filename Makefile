
# Simple helper to render the Graphviz DOT to SVG
# Requires: graphviz (dot)

ARCH_DOT=homelab_architecture_public.dot
ARCH_SVG=homelab_architecture_public.svg

.PHONY: arch clean

arch:
\t@dot -Tsvg $(ARCH_DOT) -o $(ARCH_SVG)
\t@echo "Wrote $(ARCH_SVG)"

clean:
\t@rm -f $(ARCH_SVG)
\t@echo "Cleaned generated files"
