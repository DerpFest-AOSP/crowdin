          wget https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh
            chmod +x android_build_env.sh
            ./android_build_env.sh
            wait
          wget https://artifacts.crowdin.com/repo/deb/crowdin3.deb -O crowdin.deb
          sudo dpkg -i crowdin.deb
          wait
          git clone https://github.com/PixysOS/crowdin.git crowdin
          cd crowdin
          pip install -r requirements.txt
          wait
          cd ~
