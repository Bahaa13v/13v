import subprocess as bash

hos = bash.run(["cat", "/etc/hostname"], capture_output=True, text=True).stdout.strip()
  
if hos == "debian":

  bash.run(["chmod", "+x", "shell/debian.sh"])
  bash.run(["bash", "shell/debian.sh"])

elif hos == "Arch":

  bash.run(["chmod", "+x", "shell/arch.sh"])
  bash.run(["bash", "shell/arch.sh"])

elif hos == "archiso":

  bash.run(["chmod", "+x", "shell/archiso.sh"])
  bash.run(["bash", "shell/archiso.sh"])

else:
    print("bahaa support only debian and Arch")
