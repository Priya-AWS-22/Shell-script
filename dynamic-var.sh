 #!/bin/bash

 TodayDate=$(date +%f)  # Way of declaring hardcoding

 echo -e "Number of user in system : e[33m $(who | wc -1) \e{0m"