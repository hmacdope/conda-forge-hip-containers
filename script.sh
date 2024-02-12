mkdir  build build-hip install
mamba env create --file build-linux.yml
conda activate build
export CUDA_HOME=$CONDA_PREFIX

cd build
cmake  -D CMAKE_INSTALL_PREFIX=../install -D OPENMM_BUILD_COMMON=ON -D OPENMM_PYTHON_USER_INSTALL=ON ../openmm
make -j 
make install
make PythonInstall
cd ..

cd build-hip
cmake  -D OPENMM_DIR=../install -D OPENMM_SOURCE_DIR=../openmm -D CMAKE_INSTALL_PREFIX=../install ../openmm-hip/
make -j 
make install
