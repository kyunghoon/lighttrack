# FIRST RUN
# $ source activate tensorflow_p36

all:
	cd ./lib && \
		make -f Makefile && \
		cd -
	cd ./graph/torchlight && \
		python setup.py install && \
		cd - 
	pip install opencv-python setproctitle torch torchvision

run:
	python demo_video_mobile.py

.PHONY: run
