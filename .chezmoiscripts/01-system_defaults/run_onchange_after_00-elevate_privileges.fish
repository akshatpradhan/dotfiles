#!/usr/bin/env fish

# function elevate_root_access
#   if not sudo -n true 2>/dev/null
#       echo "This script needs administrative privileges to run."
#       echo "Please enter your password or ensure you've recently authenticated with 'sudo'."
#       sudo -v

#       if not sudo -n true 2>/dev/null
#           echo "\nUnable to gain administrative privileges. Exiting now."
#           exit 1
#       end
#       echo
#   end
# end

function grant_1password_access
  echo "Hello"

end

# elevate_root_access
grant_1password_access