FROM ubuntu:20.04
RUN apt update && /
    apt install phyton3-pip git-y
WORKDIR /root
RUN git clone https://github.com/DevProjectsForDevOps/StudentCoursesRestAPI.git
WORKDIR /root/StudentCoursesRestAPI
run pip install -r requirments.txt
EXPOSE 8080
CMD [ "phyton3" , "app.py"]