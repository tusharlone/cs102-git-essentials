import numpy as np
print(np.__version__)

class Dummy:
    """
    This is a dummy class, with dummy docs strings for testing pupose!

    Parameters:
        name (str): The name of the dummy instance.
    """
    def __init__(self, name: str):
        """
        Parameters: 
            name (str): The name of the dummy instance.

        Returns:
            None
        """
        self.name = name

    def get_name(self):
        """
        Returns the name of the dummy instance.

        Parameters: 
            None

        Returns:
            str: The name of the dummy instance.
        """
        return self.name
