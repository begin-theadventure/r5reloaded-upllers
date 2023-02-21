echo "# Start"
echo "# R5Reloaded Flowstate git script updater/installer.. Place in the game directory and run."

echo "# Download latest scripts."
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

echo "# Update done! 🐸"

echo "# Remove r5_flowstate-scripts"
    	rm -dr r5_flowstate-scripts
echo "# Remove r5_flowstate.zip"
    	rm r5_flowstate.zip

echo "# End"
