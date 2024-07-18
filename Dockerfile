FROM	kalilinux/kali-bleeding-edge

ENV	DEBIAN_FRONTEND	noninteractive
RUN	apt update \
	&& apt -y install kali-linux-headless seclists dirsearch gobuster golang exploitdb python3-pip python3.11-venv
RUN	go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
ENV	PATH	"/root/go/bin:${PATH}"
RUN	pdtm -install-all
RUN	python3.11 -m venv /opt/pwncat-env
RUN	/bin/bash -c "source /opt/pwncat-env/bin/activate && pip install pwncat-cs"
RUN	echo 'alias runpwncat="source /opt/pwncat-env/bin/activate && pwncat-cs"' >> /root/.bashrc
CMD	["/bin/bash"]
