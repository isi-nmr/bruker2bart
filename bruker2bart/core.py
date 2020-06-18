from brukerapi.dataset import Dataset
from .cfl import writecfl
import numpy as np

mri_dims = [
    'READ_DIM',
    'PHS1_DIM',
    'PHS2_DIM',
    'COIL_DIM',
    'MAPS_DIM',
    'TE_DIM',
    'COEFF_DIM',
    'COEFF2_DIM',
    'ITER_DIM',
    'CSHIFT_DIM',
    'TIME_DIM',
    'TIME2_DIM',
    'LEVEL_DIM',
    'SLICE_DIM',
    'AVG_DIM',
]

def conversion_CART(dataset, path_bart):
    writecfl(path_bart, dataset.data)

def conversion_RADIAL(dataset, path_bart, path_traj=None):
    writecfl(path_bart, np.expand_dims(dataset.data, axis=0))

    traj_ = dataset.traj

    # to 1 / FOV
    for dim in range(traj_.shape[0]):
        traj_[dim,...] *= 1. / (0.001 * dataset.ACQ_fov[dim])

    traj = np.zeros(shape=(3,)+traj_.shape[1:], dtype=np.complex64)
    traj.real[0:traj_.shape[0],...] = traj_
    writecfl(path_traj, traj)

def conversion(path_bruker, path_bart, path_traj=None):
    dataset = Dataset(path_bruker)
    scheme = dataset.scheme._meta['id']

    if scheme in ['CART_2D', 'CART_3D', 'FIELD_MAP']:
        conversion_CART(dataset, path_bart)
    elif scheme in ['RADIAL']:
        conversion_RADIAL(dataset, path_bart, path_traj)
    else:
        raise NotImplemented('Conversion for {scheme} acquisition scheme is not yet implemented')





