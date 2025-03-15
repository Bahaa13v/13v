import subprocess as bash

hos = bash.run(["cat", "/etc/hostname"], capture_output=True, text=True).stdout.strip()
  
if hos == "debian":

  bash.run(["chmod", "+x", "shell/deb.sh"])
  bash.run(["bash", "shell/debian.sh"])

elif hos == "Arch":

  bash.run(["chmod", "+x", "shell/dot.sh"])
  bash.run(["bash", "shell/arch.sh"])

elif hos == "archiso":

  bash.run(["chmod", "+x", "shell/arc.sh"])
  bash.run(["bash", "shell/archiso.sh"])

else:
    print("bahaa support only debian and Arch")
