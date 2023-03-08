          mkdir pixys
          cd pixys
          repo init -u https://github.com/glikched/manifest -b 13 -m crowdin.xml --depth=1
          repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
          wait
          cd crowdin
          export CROWDIN_BASE_PATH=/home/runner/work/crowdin/crowdin/derpfest
          CROWDIN_API_KEY=$CROWDIN_API_KEY
          ./crowdin_sync.py --username victor4cris --branch 13 --upload-sources --upload-translations
