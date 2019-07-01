step1.  modify bin/install_python_env_centos.sh
	python_version=3.6.5    # give a python version
	python_file=python3		# python binary file
	pip_file=pip3			# python binary file
	version_command=python3	# python command setting
	pip_command=pip3		# pip command setting

step2.  start install command
	sh ./bin/install_python_env_centos.sh

step3.  test
	Please input command in your terminal
		python3 --version
		pip3 --version