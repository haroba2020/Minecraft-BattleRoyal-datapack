"""Build an installable datapack ZIP using only the Python standard library."""
import json
from pathlib import Path
import zipfile

def main():
    root = Path(__file__).resolve().parents[1]
    files = {p.relative_to(root).as_posix(): p for p in (root / 'data').rglob('*')
             if p.is_file() and '.idea' not in p.parts}
    files.update({name: root / name for name in ('pack.mcmeta', 'README.md')})
    for name, path in files.items():
        if name.endswith(('.json', '.mcmeta')):
            json.loads(path.read_text(encoding='utf-8'))
    destination = root / 'dist' / 'BattleRoyal-v2-26.2.zip'
    destination.parent.mkdir(exist_ok=True)
    with zipfile.ZipFile(destination, 'w', zipfile.ZIP_DEFLATED) as archive:
        for name, path in sorted(files.items()):
            archive.write(path, name)
    print(destination)

if __name__ == '__main__':
    main()
