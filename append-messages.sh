#!/bin/bash

# Red Hat Single Sign-On
export RHSSO_HOME=/path/to/rh-sso-7.6

# Iterate over all files in the source directory with .properties extension
for file in ./src/main/resources/theme/email-code-theme/email/messages/*.properties; do
    # Get the filename without the path and extension
    filename=$(basename "$file" .properties)    
    # Append the contents of the source file to the destination file
    echo "Append content of $filename into $RHSSO_HOME/themes/base/email/messages/$filename.properties"
    cat "$file" >> "$RHSSO_HOME/themes/base/email/messages/$filename.properties"
done
