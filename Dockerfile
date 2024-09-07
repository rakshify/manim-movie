FROM ubuntu:latest

# Install manim dependencies
RUN apt update
RUN apt install -y build-essential python3-dev libcairo2-dev libpango1.0-dev ffmpeg
RUN apt install -y python3-pip
RUN python3 -m pip config set global.break-system-packages true
RUN pip3 install manim
RUN apt install -y texlive texlive-latex-extra
