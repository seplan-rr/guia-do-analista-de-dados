all: create_dirs create_files

create_dirs:
    for f in $(grep -E '\./.*\/' -o src/SUMMARY.md | sort -u); do mkdir -p "./src/$(echo $f | tail -c +3)"; done;

create_files:
    for f in $(grep -E '\./.*/.*\)' -o src/SUMMARY.md | sort -u); do touch "./src/$(echo $f | tail -c +3 | head -c -2)"; done;
