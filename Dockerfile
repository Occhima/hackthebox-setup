FROM	kalilinux/kali-bleeding-edge

ENV	DEBIAN_FRONTEND	noninteractive
RUN	apt update \
	&& apt -y install  kali-linux-large seclists dirsearch gobuster golang exploitdb pipx
RUN	go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
ENV	PATH	"/root/go/bin:${PATH}"
RUN	pdtm -install-all
RUN	pipx install pwncat-cs
CMD	["/bin/bash"]
