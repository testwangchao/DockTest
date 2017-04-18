#coding:utf-8
import os
way = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.mkdir(way + 'mydockerbuild')
os.chdir(way+'mydockerbuild')
with open('Dockerfile','w+') as file:
    file.write("FROM docker/whalesay:latest\nRUN apt-get -y update && apt-get install -y fortunes\nCMD /usr/games/fortune -a | cowsay")
