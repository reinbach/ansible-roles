from setuptools import setup


def readme():
    with open("README.md") as f:
        return f.read()


setup(
    name="ansible-roles",
    version="0.24.0",
    description=readme(),
    url="https://github.com/reinbach/ansible-roles",
    author="Greg Reinbach",
    author_email="greg@reinbach.com",
    license="MIT",
    packages=[],
    zip_safe=False,
)
