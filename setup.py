from setuptools import setup


def readme():
    with open("README.rst") as f:
        return f.read()


setup(
    name="bayete-roles",
    version="0.5.2",
    description=readme(),
    url="https://git.ironlabs.com/Bayete/roles",
    author="Greg Reinbach",
    author_email="greg@bayete.com",
    license="MIT",
    packages=[],
    zip_safe=False,
)
