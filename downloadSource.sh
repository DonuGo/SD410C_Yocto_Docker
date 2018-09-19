mkdir source
cd source 

repo init -u git://codeaurora.org/quic/imm/manifest.git -b IMM.LE.1.0 -m IMM.LE.1.0-33400-8x16.0.xml --repo-url=git://codeaurora.org/tools/repo.git --repo-branch=caf-stable
repo sync

patch -p1 < ../r1034.2.1.patch
