FROM amazon/aws-lambda-python:3.7 AS chrome-prerequisites

RUN yum upgrade
# RUN yum install -y x11vnc
# RUN yum install -y xvfb
# RUN yum install -y fluxbox
RUN yum install -y wget
# RUN yum install -y wmctrl

FROM chrome-prerequisites AS chrome-installation
COPY resources/google-chrome-stable_current_x86_64.rpm .
# RUN rpm -ivh google-chrome-stable_current_x86_64.rpm
COPY resources/google-chrome.repo /etc/yum.repos.d/
# RUN yum upgrade
# RUN yum install -y google-chrome-stable

# CMD ["app.handler"]
CMD ["/bin/bash"]
