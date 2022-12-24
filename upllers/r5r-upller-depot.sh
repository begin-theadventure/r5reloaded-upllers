echo "# Start."
echo "# R5Reloaded depot updater/installer (scripts included)."

echo "# Download the depot."
	curl https://github.com/Mauler125/r5sdk/releases/latest/download/depot.zip -LO

echo "# Unzip the depot and replace all existing files."
    	unzip -o depot.zip

echo "# Update done! 🐸"

echo "# Cleanup."
echo "# Remove depot.zip."
	rm depot.zip

echo "# End."
