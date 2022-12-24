echo "# Start"
echo "# R5Reloaded Flowstate updater/installer.. Place in the game directory and run."

echo "# Download latest release."
	owner_repo='ColombianGuy/r5_flowstate'; latest_version_url="$(curl -s https://api.github.com/repos/$owner_repo/releases/latest| grep "browser_download_url.*zip" | cut -d : -f 2,3 | tr -d \")"; echo $latest_version_url; basename $latest_version_url ; curl -X GET $latest_version_url  -Lo Flowstate-Required-Files.zip

echo "# Unzip to r5_flowstate-updater.."
    	unzip -o Flowstate-Required-Files.zip -d Flowstate-Required-Files

echo "# Open Flowstate-Required-Files folder"
	cd Flowstate-Required-Files

echo "# Copy changed files to R5Reloaded."
	cp -r * ..

echo "# Download latest scripts."
	cd ..
    	curl https://github.com/ColombianGuy/r5_flowstate/archive/refs/heads/r5_flowstate.zip -Lo r5_flowstate.zip

echo "# Unzip to r5_flowstate-scripts.."
	unzip -o r5_flowstate.zip -d r5_flowstate-scripts

echo "# Create scripts directory if it doesn't exist"
    	mkdir -p -- ../platform/scripts

echo "# Open r5_flowstate-scripts"
	cd r5_flowstate-scripts

echo "# Copy the updated scripts to /platform/scripts and replace the old ones..."
    	cp -r * ../platform/scripts

echo "# Cleanup.."
    cd ..
echo "# Remove Flowstate-Required-Files"
    	rm -dr Flowstate-Required-Files
    	rm Flowstate-Required-Files.zip
echo "# Remove r5_flowstate"
    	rm -dr r5_flowstate-scripts
    	rm r5_flowstate.zip

echo "# End"
