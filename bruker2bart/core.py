from bruker.dataset import Dataset
from .cfl import writecfl

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

def conversion_CART(dataset):
    return dataset.data

def conversion_RADIAL(dataset):
    return dataset.data

def conversion(path_bruker, path_bart):
    dataset = Dataset(path_bruker)
    scheme = dataset.scheme._meta['id']

    if scheme in ['CART_2D', 'CART_3D']:
        writecfl(path_bart, conversion_CART(dataset))
    elif scheme in ['RADIAL']:
        writecfl(path_bart, conversion_RADIAL(dataset))
    else:
        raise NotImplemented('Conversion for {scheme} acquisition scheme is not yet implemented')





