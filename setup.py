from setuptools import setup

setup(name='bruker2bart',
      version='0.1.0.0',
      description='Bruker to BART data format conversion',
      author='Tomas Psorn',
      author_email='tomaspsorn@isibrno.cz',
      url='',
      download_url='',
      packages=['bruker2bart',],
      install_requires=['numpy', 'brukerapi'],
      include_package_data=True,
      license='MIT',
      zip_safe=False,
      entry_points = {
          "console_scripts": [
              "bruker2bart=bruker2bart.cli:main"
          ]
       }
     )

