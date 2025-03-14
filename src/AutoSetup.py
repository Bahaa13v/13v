import subprocess as bash

hos = bash.run(["cat", "/etc/hostname"], capture_output=True, text=True).stdout.strip()
  
if hos == "debian":

  bash.run(["chmod", "+x", "shell/deb.sh"])
  bash.run(["bash", "shell/deb.sh"])

elif hos == "Arch":

  bash.run(["chmod", "+x", "shell/dot.sh"])
  bash.run(["bash", "shell/dot.sh"])

elif hos == "archiso":

  bash.run(["chmod", "+x", "shell/arc.sh"])
  bash.run(["bash", "shell/arc.sh"])

else:
    print("bahaa support only debian and Arch")
