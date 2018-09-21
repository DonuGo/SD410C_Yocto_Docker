FROM amd64/ubuntu:trusty

# Install required packages 
RUN apt-get update
RUN apt install -y chrpath cpp diffstat g++ gawk gcc git make texinfo patch python wget vim git libsdl1.2-dev curl
RUN apt-get -y autoremove && apt-get clean autoclean  

# Install repo tool
RUN curl https://storage.googleapis.com/git-repo-downloads/repo -o /usr/local/bin/repo
RUN chmod +x /usr/local/bin/repo

# Add normal user
RUN adduser --disabled-password --gecos '' user
RUN adduser user sudo 
RUN echo user:user | chpasswd
RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /home/user/workspace
# Set default user
USER user
CMD ["/bin/bash"]
