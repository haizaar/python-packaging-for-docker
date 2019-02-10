from setuptools import setup

setup(
    name="cheers",
    version="0.0.1",
    packages=["cheers"],
    install_requires=["pycrypto"],
    entry_points={
        "console_scripts": (
            "cheers=cheers.cheers:main",
        )
    },
)
