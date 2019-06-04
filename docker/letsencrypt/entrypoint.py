#!/bin/bash sh

import posixpath

BASE_PATH = '/data/certbot'

class CreateCertbot:
    """This class creates all the necessary files
    for CERTBOT (HTTPS).
    """
    def __init__(self):
        # Check if the path exists
        # in the container -- else,
        # we have to create it
        if self.data_dir_exists:
            pass

    @property
    def data_dir_exists(self):
        if posixpath.exists(BASE_PATH):
            return True
        return False

CreateCertbot()
