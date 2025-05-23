all: create_dirs create_files

create_dirs:
    for f in $(grep -E '\./.*\/' -o src/SUMMARY.md | sort -u); do mkdir -p "./src/$(echo $f | tail -c +3)"; done;

create_files:
    for f in $(grep -E '\./.*/.*\)' -o src/SUMMARY.md | sort -u); do touch "./src/$(echo $f | tail -c +3 | head -c -2)"; done;

create_contributors:
    echo '# Contribuidores\n' > src/contribuidores.md
    cat book.toml | grep authors | grep -o -E '".*"' | tail -c +2 | sed 's/"$//' | sed 's/", "/\n/' | while read line; do echo "- ${line}" >> src/contribuidores.md; done
    echo "" >> src/contribuidores.md
